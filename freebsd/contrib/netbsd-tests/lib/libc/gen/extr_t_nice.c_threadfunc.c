
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE (int) ;
 int PRIO_PROCESS ;
 int atf_tc_fail (char*) ;
 scalar_t__ errno ;
 int getpriority (int ,int ) ;

__attribute__((used)) static void *
threadfunc(void *arg)
{
 int pri, val;

 val = *(int *)arg;

 errno = 0;
 pri = getpriority(PRIO_PROCESS, 0);
 ATF_REQUIRE(errno == 0);

 if (pri != val)
  atf_tc_fail("nice(3) value was not propagated to threads");

 return ((void*)0);
}
