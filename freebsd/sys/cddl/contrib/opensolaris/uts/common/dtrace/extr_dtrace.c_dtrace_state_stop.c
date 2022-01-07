
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int processorid_t ;
struct TYPE_8__ {int dcr_visible; TYPE_2__* dcr_cred; } ;
struct TYPE_9__ {scalar_t__ dts_activity; scalar_t__ dts_getf; TYPE_3__ dts_cred; scalar_t__ dts_reserve; } ;
typedef TYPE_4__ dtrace_state_t ;
typedef int dtrace_icookie_t ;
struct TYPE_7__ {TYPE_1__* cr_zone; } ;
struct TYPE_6__ {scalar_t__ zone_dtrace_getf; } ;


 int ASSERT (int) ;
 scalar_t__ DTRACE_ACTIVITY_ACTIVE ;
 scalar_t__ DTRACE_ACTIVITY_COOLDOWN ;
 scalar_t__ DTRACE_ACTIVITY_DRAINING ;
 scalar_t__ DTRACE_ACTIVITY_STOPPED ;
 int DTRACE_CRV_KERNEL ;
 int EINVAL ;
 int MUTEX_HELD (int *) ;
 int curcpu ;
 int * dtrace_closef ;
 scalar_t__ dtrace_getf ;
 int * dtrace_getf_barrier ;
 int dtrace_interrupt_disable () ;
 int dtrace_interrupt_enable (int ) ;
 int dtrace_lock ;
 int dtrace_probe (int ,int ,int ,int ,int ,int ) ;
 int dtrace_probeid_end ;
 int dtrace_sync () ;

__attribute__((used)) static int
dtrace_state_stop(dtrace_state_t *state, processorid_t *cpu)
{
 dtrace_icookie_t cookie;

 ASSERT(MUTEX_HELD(&dtrace_lock));

 if (state->dts_activity != DTRACE_ACTIVITY_ACTIVE &&
     state->dts_activity != DTRACE_ACTIVITY_DRAINING)
  return (EINVAL);






 state->dts_activity = DTRACE_ACTIVITY_DRAINING;
 dtrace_sync();
 state->dts_activity = DTRACE_ACTIVITY_COOLDOWN;
 dtrace_sync();
 ASSERT(state->dts_activity == DTRACE_ACTIVITY_COOLDOWN);
 state->dts_reserve = 0;

 cookie = dtrace_interrupt_disable();
 *cpu = curcpu;
 dtrace_probe(dtrace_probeid_end,
     (uint64_t)(uintptr_t)state, 0, 0, 0, 0);
 dtrace_interrupt_enable(cookie);

 state->dts_activity = DTRACE_ACTIVITY_STOPPED;
 dtrace_sync();
 return (0);
}
