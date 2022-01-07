
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;


 int ATF_REQUIRE_MSG (int,char*,int) ;
 size_t __arraycount (int*) ;
 int sched_getscheduler (int ) ;
 int* schedulers ;

__attribute__((used)) static int
get_different_scheduler(void)
{
 u_int i;
 int scheduler;


 scheduler = sched_getscheduler(0);
 for (i = 0; i < __arraycount(schedulers); i++) {
  if (schedulers[i] == scheduler)
   break;
 }
 ATF_REQUIRE_MSG(i < __arraycount(schedulers),
     "Unknown current scheduler %d", scheduler);


 i++;
 if (i >= __arraycount(schedulers))
  i = 0;
 return schedulers[i];
}
