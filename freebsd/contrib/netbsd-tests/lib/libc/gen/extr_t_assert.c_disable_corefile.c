
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {scalar_t__ rlim_max; scalar_t__ rlim_cur; } ;


 int ATF_REQUIRE (int) ;
 int RLIMIT_CORE ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;

__attribute__((used)) static void
disable_corefile(void)
{
 struct rlimit limits;

 limits.rlim_cur = 0;
 limits.rlim_max = 0;

 ATF_REQUIRE(setrlimit(RLIMIT_CORE, &limits) == 0);
}
