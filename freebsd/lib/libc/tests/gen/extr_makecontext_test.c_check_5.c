
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_EQ (int,int) ;

__attribute__((used)) static void
check_5(int arg1, int arg2, int arg3, int arg4, int arg5)
{

 ATF_REQUIRE_EQ(arg1, 1);
 ATF_REQUIRE_EQ(arg2, 2);
 ATF_REQUIRE_EQ(arg3, 3);
 ATF_REQUIRE_EQ(arg4, 4);
 ATF_REQUIRE_EQ(arg5, 5);
}
