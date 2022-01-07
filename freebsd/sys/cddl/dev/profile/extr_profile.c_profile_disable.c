
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prof_kind; int prof_cyclic; } ;
typedef TYPE_1__ profile_probe_t ;
typedef int dtrace_id_t ;


 int ASSERT (int) ;
 scalar_t__ PROF_PROFILE ;
 scalar_t__ PROF_TICK ;
 int callout_active (int *) ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int profile_disable_omni (TYPE_1__*) ;

__attribute__((used)) static void
profile_disable(void *arg, dtrace_id_t id, void *parg)
{
 profile_probe_t *prof = parg;

 if (prof->prof_kind == PROF_TICK) {
  ASSERT(callout_active(&prof->prof_cyclic));
  callout_stop(&prof->prof_cyclic);
  callout_drain(&prof->prof_cyclic);
 } else {
  ASSERT(prof->prof_kind == PROF_PROFILE);
  profile_disable_omni(prof);
 }
}
