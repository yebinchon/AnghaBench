
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_cookie; char* zc_name; char* zc_value; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int objset_t ;
typedef scalar_t__ dmu_objset_type_t ;
typedef int boolean_t ;


 int B_TRUE ;
 scalar_t__ DMU_OST_ZFS ;
 scalar_t__ DMU_OST_ZVOL ;
 int DS_FIND_CHILDREN ;
 int EINVAL ;
 int ENOTSUP ;
 int EXDEV ;
 int FTAG ;
 int SET_ERROR (int ) ;
 scalar_t__ dataset_namecheck (char*,int *,int *) ;
 int dmu_objset_find (char*,int ,char*,int ) ;
 int dmu_objset_hold (char*,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;
 scalar_t__ dmu_objset_type (int *) ;
 int dsl_bookmark_rename (char*,char*,char*) ;
 int dsl_dataset_rename_snapshot (char*,char*,char*,int) ;
 int dsl_dir_rename (char*,char*) ;
 int recursive_unmount ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int zvol_remove_minor (char*) ;

__attribute__((used)) static int
zfs_ioc_rename(zfs_cmd_t *zc)
{
 objset_t *os;
 dmu_objset_type_t ost;
 boolean_t recursive = zc->zc_cookie & 1;
 char *pos, *pos2;
 boolean_t allow_mounted = B_TRUE;
 int err;





 zc->zc_name[sizeof (zc->zc_name) - 1] = '\0';
 zc->zc_value[sizeof (zc->zc_value) - 1] = '\0';

 pos = strchr(zc->zc_name, '#');
 if (pos != ((void*)0)) {

  pos2 = strchr(zc->zc_value, '#');
  if (pos2 == ((void*)0))
   return (SET_ERROR(EINVAL));


  if (recursive)
   return (SET_ERROR(ENOTSUP));

  *pos = '\0';
  *pos2 = '\0';
  if (strcmp(zc->zc_name, zc->zc_value) == 0) {
   err = dsl_bookmark_rename(zc->zc_name,
       pos + 1, pos2 + 1);
  } else {
   err = SET_ERROR(EXDEV);
  }
  *pos = '#';
  *pos2 = '#';
  return (err);
 }


 if (dataset_namecheck(zc->zc_name, ((void*)0), ((void*)0)) != 0 ||
     dataset_namecheck(zc->zc_value, ((void*)0), ((void*)0)) != 0 ||
     strchr(zc->zc_name, '%') || strchr(zc->zc_value, '%'))
  return (SET_ERROR(EINVAL));

 err = dmu_objset_hold(zc->zc_name, FTAG, &os);
 if (err != 0)
  return (err);
 ost = dmu_objset_type(os);
 dmu_objset_rele(os, FTAG);

 pos = strchr(zc->zc_name, '@');
 if (pos != ((void*)0)) {

  pos2 = strchr(zc->zc_value, '@');
  if (pos2 == ((void*)0))
   return (SET_ERROR(EINVAL));
  *pos = '\0';
  *pos2 = '\0';
  if (strcmp(zc->zc_name, zc->zc_value) != 0) {
   err = SET_ERROR(EXDEV);
  } else {
   if (ost == DMU_OST_ZFS && !allow_mounted) {
    err = dmu_objset_find(zc->zc_name,
        recursive_unmount, pos + 1,
        recursive ? DS_FIND_CHILDREN : 0);
   }
   if (err == 0) {
    err = dsl_dataset_rename_snapshot(zc->zc_name,
        pos + 1, pos2 + 1, recursive);
   }
  }
  *pos = '@';
  *pos2 = '@';
  return (err);
 } else {




  return (dsl_dir_rename(zc->zc_name, zc->zc_value));
 }
}
