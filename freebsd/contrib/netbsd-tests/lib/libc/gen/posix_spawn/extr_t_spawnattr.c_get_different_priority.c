
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;


 int sched_get_priority_max (int) ;
 int sched_get_priority_min (int) ;
 int sched_getparam (int ,struct sched_param*) ;

__attribute__((used)) static int
get_different_priority(int scheduler)
{
 int max, min, new, priority;
 struct sched_param param;

 max = sched_get_priority_max(scheduler);
 min = sched_get_priority_min(scheduler);

 sched_getparam(0, &param);
 priority = param.sched_priority;





 new = priority + 1;
 if (new > max)
  new = min;
 return new;
}
