
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_CHECK_EQ (int ,int) ;
 int optind ;
 int testf_helper (int,int) ;
 int var1 ;
 int var2 ;
 int var3 ;
 int var4 ;
 int var4_helper ;

__attribute__((used)) static void *
testf(void *dummy)
{
 ATF_CHECK_EQ(var1, 1);
 ATF_CHECK_EQ(var2, 0);
 ATF_CHECK_EQ(var3, &optind);
 ATF_CHECK_EQ(var4, &var4_helper);
 testf_helper(2, 2);
 ATF_CHECK_EQ(var1, 2);
 ATF_CHECK_EQ(var2, 2);
 testf_helper(3, 3);
 ATF_CHECK_EQ(var1, 3);
 ATF_CHECK_EQ(var2, 3);
 ATF_CHECK_EQ(var3, &optind);

 return ((void*)0);
}
