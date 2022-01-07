
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ prof_kind; scalar_t__ prof_expected; int prof_cyclic; scalar_t__ prof_interval; } ;
typedef TYPE_1__ profile_probe_t ;
typedef int dtrace_id_t ;


 int ASSERT (int) ;
 int C_ABSOLUTE ;
 int C_DIRECT_EXEC ;
 scalar_t__ PROF_PROFILE ;
 scalar_t__ PROF_TICK ;
 int callout_reset_sbt (int *,scalar_t__,int ,int ,TYPE_1__*,int) ;
 int profile_enable_omni (TYPE_1__*) ;
 int profile_tick ;
 scalar_t__ sbinuptime () ;

__attribute__((used)) static void
profile_enable(void *arg, dtrace_id_t id, void *parg)
{
 profile_probe_t *prof = parg;

 if (prof->prof_kind == PROF_TICK) {
  prof->prof_expected = sbinuptime() + prof->prof_interval;
  callout_reset_sbt(&prof->prof_cyclic,
      prof->prof_expected, 0, profile_tick, prof,
      C_DIRECT_EXEC | C_ABSOLUTE);
 } else {
  ASSERT(prof->prof_kind == PROF_PROFILE);
  profile_enable_omni(prof);
 }
}
