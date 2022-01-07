
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;


 int ATF_CHECK_EQ (int,int) ;
 int ATF_REQUIRE (int) ;
 scalar_t__ sched_getparam (int ,struct sched_param*) ;
 int sched_getscheduler (int ) ;
 scalar_t__ sched_setscheduler (int ,int,struct sched_param*) ;

__attribute__((used)) static void
sched_priority_set(int pri, int pol)
{
 struct sched_param sched;

 sched.sched_priority = pri;

 ATF_REQUIRE(pri >= 0);
 ATF_REQUIRE(sched_setscheduler(0, pol, &sched) == 0);




 ATF_CHECK_EQ(sched_getscheduler(0), pol);




 sched.sched_priority = -1;

 ATF_REQUIRE(sched_getparam(0, &sched) == 0);
 ATF_CHECK_EQ(sched.sched_priority, pri);
}
