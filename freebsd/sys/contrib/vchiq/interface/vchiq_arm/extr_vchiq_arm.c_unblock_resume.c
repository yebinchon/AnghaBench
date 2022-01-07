
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ resume_blocked; int resume_blocker; } ;
typedef TYPE_1__ VCHIQ_ARM_STATE_T ;


 int complete_all (int *) ;

__attribute__((used)) static inline void
unblock_resume(VCHIQ_ARM_STATE_T *arm_state)
{
 complete_all(&arm_state->resume_blocker);
 arm_state->resume_blocked = 0;
}
