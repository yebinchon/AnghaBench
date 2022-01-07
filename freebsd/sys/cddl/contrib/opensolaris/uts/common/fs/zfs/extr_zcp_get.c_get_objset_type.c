
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zfs_type_t ;
struct TYPE_8__ {TYPE_1__* os_phys; } ;
typedef TYPE_2__ objset_t ;
struct TYPE_9__ {scalar_t__ ds_is_snapshot; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_7__ {int os_type; } ;




 int EINVAL ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_SNAPSHOT ;
 int ZFS_TYPE_VOLUME ;
 int dmu_objset_from_ds (TYPE_3__*,TYPE_2__**) ;

__attribute__((used)) static int
get_objset_type(dsl_dataset_t *ds, zfs_type_t *type)
{
 int error;
 objset_t *os;
 error = dmu_objset_from_ds(ds, &os);
 if (error != 0)
  return (error);
 if (ds->ds_is_snapshot) {
  *type = ZFS_TYPE_SNAPSHOT;
 } else {
  switch (os->os_phys->os_type) {
  case 129:
   *type = ZFS_TYPE_FILESYSTEM;
   break;
  case 128:
   *type = ZFS_TYPE_VOLUME;
   break;
  default:
   return (EINVAL);
  }
 }
 return (0);
}
