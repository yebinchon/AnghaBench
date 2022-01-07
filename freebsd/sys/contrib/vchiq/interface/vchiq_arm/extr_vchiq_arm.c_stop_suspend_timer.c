
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ suspend_timer_running; int suspend_timer; } ;
typedef TYPE_1__ VCHIQ_ARM_STATE_T ;


 int del_timer (int *) ;

__attribute__((used)) static inline void
stop_suspend_timer(VCHIQ_ARM_STATE_T *arm_state)
{
 if (arm_state->suspend_timer_running) {
  del_timer(&arm_state->suspend_timer);
  arm_state->suspend_timer_running = 0;
 }
}
