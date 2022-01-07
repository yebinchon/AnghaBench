
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comm_timer {TYPE_1__* ev_timer; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;



int
comm_timer_is_set(struct comm_timer* timer)
{
 return (int)timer->ev_timer->enabled;
}
