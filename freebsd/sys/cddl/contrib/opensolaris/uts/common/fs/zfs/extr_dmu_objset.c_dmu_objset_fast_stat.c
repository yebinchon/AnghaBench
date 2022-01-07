
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ os_dsl_dataset; TYPE_1__* os_phys; } ;
typedef TYPE_2__ objset_t ;
struct TYPE_9__ {int dds_type; } ;
typedef TYPE_3__ dmu_objset_stats_t ;
struct TYPE_7__ {int os_type; } ;


 int dsl_dataset_fast_stat (scalar_t__,TYPE_3__*) ;

void
dmu_objset_fast_stat(objset_t *os, dmu_objset_stats_t *stat)
{
 stat->dds_type = os->os_phys->os_type;
 if (os->os_dsl_dataset)
  dsl_dataset_fast_stat(os->os_dsl_dataset, stat);
}
