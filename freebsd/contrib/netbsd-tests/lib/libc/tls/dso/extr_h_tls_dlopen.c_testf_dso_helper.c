
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_CHECK_EQ (int ,int ) ;
 int getpid ;
 int local_var ;
 int optind ;
 int var1 ;
 int var2 ;
 int * var3 ;

void
testf_dso_helper(int x, int y)
{
 var1 = x;
 var2 = y;
 var3 = &optind;
 ATF_CHECK_EQ(local_var, getpid);
}
