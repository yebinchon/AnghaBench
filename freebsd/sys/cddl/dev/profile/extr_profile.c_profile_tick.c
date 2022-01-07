
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prof_expected; int prof_cyclic; scalar_t__ prof_interval; } ;
typedef TYPE_1__ profile_probe_t ;


 int C_ABSOLUTE ;
 int C_DIRECT_EXEC ;
 int callout_schedule_sbt (int *,int ,int ,int) ;
 int profile_probe (TYPE_1__*,int ) ;

__attribute__((used)) static void
profile_tick(void *arg)
{
 profile_probe_t *prof = arg;

 profile_probe(prof, 0);
 prof->prof_expected += prof->prof_interval;
 callout_schedule_sbt(&prof->prof_cyclic,
     prof->prof_expected, 0, C_DIRECT_EXEC | C_ABSOLUTE);
}
