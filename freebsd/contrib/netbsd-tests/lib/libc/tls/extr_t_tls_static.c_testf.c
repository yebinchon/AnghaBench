
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_CHECK_EQ (int ,int) ;
 int testf_helper () ;
 int var1 ;
 int var2 ;

__attribute__((used)) static void *
testf(void *dummy)
{
 ATF_CHECK_EQ(var1, 1);
 ATF_CHECK_EQ(var2, 0);
 testf_helper();
 ATF_CHECK_EQ(var1, -1);
 ATF_CHECK_EQ(var2, -1);

 return ((void*)0);
}
