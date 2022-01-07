
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int ASSERT_INT_EQ (int,int) ;
 int ASSERT_STRING_EQ (char*,char*) ;
 int TEST_DONE () ;
 int TEST_START (char*) ;
 int snmprintf (char*,int,int*,char*) ;

__attribute__((used)) static void
badarg(void)
{
 char buf[16];
 int len, width;

 width = 1;
 TEST_START("utf8_badarg");
 len = snmprintf(buf, sizeof(buf), &width, "\377");
 ASSERT_INT_EQ(len, -1);
 ASSERT_STRING_EQ(buf, "");
 ASSERT_INT_EQ(width, 0);
 TEST_DONE();
}
