
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* os_phys; } ;
typedef TYPE_2__ objset_t ;
typedef int dsl_dataset_t ;
typedef scalar_t__ dmu_objset_type_t ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__ os_type; } ;


 scalar_t__ DMU_OST_ANY ;
 int EINVAL ;
 int EROFS ;
 int SET_ERROR (int ) ;
 int dmu_objset_from_ds (int *,TYPE_2__**) ;
 int dsl_dataset_disown (int *,void*) ;
 scalar_t__ dsl_dataset_is_snapshot (int *) ;

__attribute__((used)) static int
dmu_objset_own_impl(dsl_dataset_t *ds, dmu_objset_type_t type,
    boolean_t readonly, void *tag, objset_t **osp)
{
 int err;

 err = dmu_objset_from_ds(ds, osp);
 if (err != 0) {
  dsl_dataset_disown(ds, tag);
 } else if (type != DMU_OST_ANY && type != (*osp)->os_phys->os_type) {
  dsl_dataset_disown(ds, tag);
  return (SET_ERROR(EINVAL));
 } else if (!readonly && dsl_dataset_is_snapshot(ds)) {
  dsl_dataset_disown(ds, tag);
  return (SET_ERROR(EROFS));
 }
 return (err);
}
