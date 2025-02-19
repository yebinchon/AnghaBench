
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ dts_speculations_unavail; int dts_nspeculations; scalar_t__ dts_speculations_busy; TYPE_2__* dts_speculations; } ;
typedef TYPE_1__ dtrace_state_t ;
struct TYPE_5__ {scalar_t__ dtsp_state; } ;
typedef TYPE_2__ dtrace_speculation_t ;
typedef scalar_t__ dtrace_speculation_state_t ;


 scalar_t__ DTRACESPEC_ACTIVE ;
 scalar_t__ DTRACESPEC_COMMITTING ;
 scalar_t__ DTRACESPEC_COMMITTINGMANY ;
 scalar_t__ DTRACESPEC_DISCARDING ;
 scalar_t__ DTRACESPEC_INACTIVE ;
 scalar_t__ dtrace_cas32 (scalar_t__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
dtrace_speculation(dtrace_state_t *state)
{
 int i = 0;
 dtrace_speculation_state_t current;
 uint32_t *stat = &state->dts_speculations_unavail, count;

 while (i < state->dts_nspeculations) {
  dtrace_speculation_t *spec = &state->dts_speculations[i];

  current = spec->dtsp_state;

  if (current != DTRACESPEC_INACTIVE) {
   if (current == DTRACESPEC_COMMITTINGMANY ||
       current == DTRACESPEC_COMMITTING ||
       current == DTRACESPEC_DISCARDING)
    stat = &state->dts_speculations_busy;
   i++;
   continue;
  }

  if (dtrace_cas32((uint32_t *)&spec->dtsp_state,
      current, DTRACESPEC_ACTIVE) == current)
   return (i + 1);
 }






 do {
  count = *stat;
 } while (dtrace_cas32(stat, count, count + 1) != count);

 return (0);
}
