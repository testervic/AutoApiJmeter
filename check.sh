echo "执行jmx并生成测试报告"
date_time=`date "+%m_%d_%H_%M_%S"`
cd /Users/vic/.jenkins/workspace/TestApi/report/report
echo `pwd`
echo "清空report"
echo `rm -rf *`
echo `jmeter -n -t /Users/vic/.jenkins/workspace/TestApi/jmx/Demo.jmx -l /Users/vic/.jenkins/workspace/TestApi/report/jtl/report_'${date_time}'.jtl -e -o /Users/vic/.jenkins/workspace/TestApi/report/report`
jtl_report=`find /Users/vic/.jenkins/workspace/TestApi/report/jtl -type f -exec basename {} \;| sort -n|tail -n 1`
echo "最新jtl:${jtl_report}"