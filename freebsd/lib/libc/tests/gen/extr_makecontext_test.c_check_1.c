
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_EQ (int,int) ;

__attribute__((used)) static void
check_1(int arg1)
{

 ATF_REQUIRE_EQ(arg1, 1);
}
