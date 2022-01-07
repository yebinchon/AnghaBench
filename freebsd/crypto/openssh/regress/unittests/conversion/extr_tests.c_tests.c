
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT_LONG_EQ (int ,int) ;
 scalar_t__ LONG_MAX ;
 int TEST_DONE () ;
 int TEST_START (char*) ;
 int convtime (char*) ;
 int snprintf (char*,int,char*,unsigned long long) ;

void
tests(void)
{
 char buf[1024];

 TEST_START("conversion_convtime");
 ASSERT_LONG_EQ(convtime("0"), 0);
 ASSERT_LONG_EQ(convtime("1"), 1);
 ASSERT_LONG_EQ(convtime("1S"), 1);

 ASSERT_LONG_EQ(convtime("90m"), 5400);
 ASSERT_LONG_EQ(convtime("1h30m"), 5400);
 ASSERT_LONG_EQ(convtime("2d"), 172800);
 ASSERT_LONG_EQ(convtime("1w"), 604800);


 ASSERT_LONG_EQ(convtime("-7"), -1);
 ASSERT_LONG_EQ(convtime("-9d"), -1);


 snprintf(buf, sizeof buf, "%llu", (unsigned long long)LONG_MAX + 1);
 ASSERT_LONG_EQ(convtime(buf), -1);


 snprintf(buf, sizeof buf, "%lluM", (unsigned long long)LONG_MAX/60 + 1);
 ASSERT_LONG_EQ(convtime(buf), -1);
 ASSERT_LONG_EQ(convtime("1000000000000000000000w"), -1);
 TEST_DONE();
}
