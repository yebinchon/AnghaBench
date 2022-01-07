
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* os_phys; int * os_dsl_dataset; } ;
typedef TYPE_2__ objset_t ;
typedef int nvlist_t ;
struct TYPE_5__ {scalar_t__ os_type; } ;


 int ASSERT (int ) ;
 scalar_t__ DMU_OST_META ;
 int ZFS_PROP_TYPE ;
 int ZFS_PROP_USERACCOUNTING ;
 scalar_t__ dmu_objset_userspace_present (TYPE_2__*) ;
 int dsl_dataset_stats (int *,int *) ;
 int dsl_prop_nvlist_add_uint64 (int *,int ,scalar_t__) ;

void
dmu_objset_stats(objset_t *os, nvlist_t *nv)
{
 ASSERT(os->os_dsl_dataset ||
     os->os_phys->os_type == DMU_OST_META);

 if (os->os_dsl_dataset != ((void*)0))
  dsl_dataset_stats(os->os_dsl_dataset, nv);

 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_TYPE,
     os->os_phys->os_type);
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_USERACCOUNTING,
     dmu_objset_userspace_present(os));
}
