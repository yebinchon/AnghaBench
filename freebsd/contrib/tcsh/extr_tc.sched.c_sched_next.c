
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {int t_when; } ;


 TYPE_1__* sched_ptr ;

time_t
sched_next(void)
{
    if (sched_ptr)
 return (sched_ptr->t_when);
    return ((time_t) - 1);
}
