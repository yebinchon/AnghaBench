
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * zv_objset; } ;
typedef TYPE_1__ zvol_state_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
struct TYPE_7__ {int doi_data_block_size; } ;
typedef TYPE_2__ dmu_object_info_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int DMU_OST_ZVOL ;
 int EROFS ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int ZFS_PROP_READONLY ;
 int ZVOL_OBJ ;
 int dmu_object_info (int *,int ,TYPE_2__*) ;
 int dmu_objset_disown (int *,int ) ;
 int dmu_objset_own (char const*,int ,scalar_t__,int ,int **) ;
 int dsl_prop_get_integer (char const*,int ,scalar_t__*,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_prop_to_name (int ) ;
 int zfsdev_state_lock ;
 int zvol_check_volsize (scalar_t__,int ) ;
 TYPE_1__* zvol_minor_lookup (char const*) ;
 int zvol_update_live_volsize (TYPE_1__*,scalar_t__) ;
 int zvol_update_volsize (int *,scalar_t__) ;

int
zvol_set_volsize(const char *name, uint64_t volsize)
{
 zvol_state_t *zv = ((void*)0);
 objset_t *os;
 int error;
 dmu_object_info_t doi;
 uint64_t readonly;
 boolean_t owned = B_FALSE;

 error = dsl_prop_get_integer(name,
     zfs_prop_to_name(ZFS_PROP_READONLY), &readonly, ((void*)0));
 if (error != 0)
  return (error);
 if (readonly)
  return (SET_ERROR(EROFS));

 mutex_enter(&zfsdev_state_lock);
 zv = zvol_minor_lookup(name);

 if (zv == ((void*)0) || zv->zv_objset == ((void*)0)) {
  if ((error = dmu_objset_own(name, DMU_OST_ZVOL, B_FALSE,
      FTAG, &os)) != 0) {
   mutex_exit(&zfsdev_state_lock);
   return (error);
  }
  owned = B_TRUE;
  if (zv != ((void*)0))
   zv->zv_objset = os;
 } else {
  os = zv->zv_objset;
 }

 if ((error = dmu_object_info(os, ZVOL_OBJ, &doi)) != 0 ||
     (error = zvol_check_volsize(volsize, doi.doi_data_block_size)) != 0)
  goto out;

 error = zvol_update_volsize(os, volsize);

 if (error == 0 && zv != ((void*)0))
  error = zvol_update_live_volsize(zv, volsize);
out:
 if (owned) {
  dmu_objset_disown(os, FTAG);
  if (zv != ((void*)0))
   zv->zv_objset = ((void*)0);
 }
 mutex_exit(&zfsdev_state_lock);
 return (error);
}
