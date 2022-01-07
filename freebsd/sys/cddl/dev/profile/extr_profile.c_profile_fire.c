
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int profile_probe_t ;
struct TYPE_2__ {scalar_t__ profc_expected; int profc_cyclic; scalar_t__ profc_interval; int * profc_probe; } ;
typedef TYPE_1__ profile_probe_percpu_t ;
typedef int hrtime_t ;


 int C_ABSOLUTE ;
 int C_DIRECT_EXEC ;
 int callout_schedule_sbt_curcpu (int *,scalar_t__,int ,int) ;
 int profile_probe (int *,int ) ;
 scalar_t__ sbinuptime () ;
 int sbt_to_nsec (scalar_t__) ;

__attribute__((used)) static void
profile_fire(void *arg)
{
 profile_probe_percpu_t *pcpu = arg;
 profile_probe_t *prof = pcpu->profc_probe;
 hrtime_t late;

 late = sbt_to_nsec(sbinuptime() - pcpu->profc_expected);

 profile_probe(prof, late);
 pcpu->profc_expected += pcpu->profc_interval;
 callout_schedule_sbt_curcpu(&pcpu->profc_cyclic,
     pcpu->profc_expected, 0, C_DIRECT_EXEC | C_ABSOLUTE);
}
