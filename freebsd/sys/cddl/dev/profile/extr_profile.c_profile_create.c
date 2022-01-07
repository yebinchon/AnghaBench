
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int prof_kind; int prof_id; int prof_cyclic; scalar_t__ prof_interval; int prof_name; } ;
typedef TYPE_1__ profile_probe_t ;
typedef scalar_t__ hrtime_t ;


 int CYCLIC_NONE ;
 int KM_SLEEP ;
 int atomic_add_32 (scalar_t__*,int) ;
 int callout_init (int *,int) ;
 int dtrace_probe_create (int ,int *,int *,char*,int ,TYPE_1__*) ;
 scalar_t__ dtrace_probe_lookup (int ,int *,int *,char*) ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 scalar_t__ nsec_to_sbt (scalar_t__) ;
 int profile_aframes ;
 int profile_id ;
 scalar_t__ profile_interval_min ;
 scalar_t__ profile_max ;
 scalar_t__ profile_total ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
profile_create(hrtime_t interval, char *name, int kind)
{
 profile_probe_t *prof;

 if (interval < profile_interval_min)
  return;

 if (dtrace_probe_lookup(profile_id, ((void*)0), ((void*)0), name) != 0)
  return;

 atomic_add_32(&profile_total, 1);
 if (profile_total > profile_max) {
  atomic_add_32(&profile_total, -1);
  return;
 }

 prof = kmem_zalloc(sizeof (profile_probe_t), KM_SLEEP);
 (void) strcpy(prof->prof_name, name);




 prof->prof_interval = nsec_to_sbt(interval);
 callout_init(&prof->prof_cyclic, 1);

 prof->prof_kind = kind;
 prof->prof_id = dtrace_probe_create(profile_id,
     ((void*)0), ((void*)0), name,
     profile_aframes, prof);
}
