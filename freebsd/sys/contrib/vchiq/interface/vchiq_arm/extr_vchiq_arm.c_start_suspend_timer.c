
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ expires; } ;
struct TYPE_5__ {int suspend_timer_running; TYPE_3__ suspend_timer; int suspend_timer_timeout; } ;
typedef TYPE_1__ VCHIQ_ARM_STATE_T ;


 int add_timer (TYPE_3__*) ;
 int del_timer (TYPE_3__*) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int ) ;

inline void
start_suspend_timer(VCHIQ_ARM_STATE_T *arm_state)
{
 del_timer(&arm_state->suspend_timer);
 arm_state->suspend_timer.expires = jiffies +
  msecs_to_jiffies(arm_state->
   suspend_timer_timeout);
 add_timer(&arm_state->suspend_timer);
 arm_state->suspend_timer_running = 1;
}
