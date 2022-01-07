
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zpool_prop_t ;
typedef int uint64_t ;
struct TYPE_5__ {int spa_failmode; int spa_root_vdev; } ;
typedef TYPE_1__ spa_t ;
typedef int objset_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;
 int BOOTFS_COMPRESS_VALID (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int DATA_TYPE_STRING ;
 int DATA_TYPE_UINT64 ;
 int DMU_OST_ZFS ;
 int E2BIG ;
 int EINVAL ;
 int EIO ;
 int ENOTSUP ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int SPA_VERSION_BEFORE_FEATURES ;
 int SPA_VERSION_BOOTFS ;
 int SPA_VERSION_DEDUP ;
 int ZFS_PROP_COMPRESSION ;
 int ZIO_DEDUPDITTO_MIN ;
 int ZIO_FAILURE_MODE_PANIC ;
 int ZIO_FAILURE_MODE_WAIT ;
 int ZPROP_MAX_COMMENT ;
 int dmu_objset_ds (int *) ;
 int dmu_objset_hold (char*,int ,int **) ;
 int dmu_objset_id (int *) ;
 int dmu_objset_rele (int *,int ) ;
 int dmu_objset_type (int *) ;
 int dsl_prop_get_int_ds (int ,int ,int*) ;
 int nvlist_add_uint64 (int *,int ,int) ;
 int * nvlist_next_nvpair (int *,int *) ;
 int nvlist_remove (int *,int ,int ) ;
 char* nvpair_name (int *) ;
 int nvpair_type (int *) ;
 int nvpair_value_string (int *,char**) ;
 int nvpair_value_uint64 (int *,int*) ;
 int spa_suspended (TYPE_1__*) ;
 int spa_version (TYPE_1__*) ;
 int strchr (char const*,char) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 int vdev_is_bootable (int ) ;
 int zfeature_lookup_name (char*,int *) ;
 int zfs_prop_to_name (int ) ;
 int zpool_name_to_prop (char const*) ;
 int zpool_prop_default_numeric (int const) ;
 int zpool_prop_feature (char const*) ;
 int zpool_prop_to_name (int const) ;

__attribute__((used)) static int
spa_prop_validate(spa_t *spa, nvlist_t *props)
{
 nvpair_t *elem;
 int error = 0, reset_bootfs = 0;
 uint64_t objnum = 0;
 boolean_t has_feature = B_FALSE;

 elem = ((void*)0);
 while ((elem = nvlist_next_nvpair(props, elem)) != ((void*)0)) {
  uint64_t intval;
  char *strval, *slash, *check, *fname;
  const char *propname = nvpair_name(elem);
  zpool_prop_t prop = zpool_name_to_prop(propname);

  switch (prop) {
  case 130:
   if (!zpool_prop_feature(propname)) {
    error = SET_ERROR(EINVAL);
    break;
   }




   if (nvpair_type(elem) != DATA_TYPE_UINT64) {
    error = SET_ERROR(EINVAL);
    break;
   }

   if (nvpair_value_uint64(elem, &intval) != 0) {
    error = SET_ERROR(EINVAL);
    break;
   }

   if (intval != 0) {
    error = SET_ERROR(EINVAL);
    break;
   }

   fname = strchr(propname, '@') + 1;
   if (zfeature_lookup_name(fname, ((void*)0)) != 0) {
    error = SET_ERROR(EINVAL);
    break;
   }

   has_feature = B_TRUE;
   break;

  case 128:
   error = nvpair_value_uint64(elem, &intval);
   if (!error &&
       (intval < spa_version(spa) ||
       intval > SPA_VERSION_BEFORE_FEATURES ||
       has_feature))
    error = SET_ERROR(EINVAL);
   break;

  case 132:
  case 137:
  case 129:
  case 138:
   error = nvpair_value_uint64(elem, &intval);
   if (!error && intval > 1)
    error = SET_ERROR(EINVAL);
   break;

  case 136:





   if (spa_version(spa) < SPA_VERSION_BOOTFS) {
    error = SET_ERROR(ENOTSUP);
    break;
   }




   if (!vdev_is_bootable(spa->spa_root_vdev)) {
    error = SET_ERROR(ENOTSUP);
    break;
   }

   reset_bootfs = 1;

   error = nvpair_value_string(elem, &strval);

   if (!error) {
    objset_t *os;
    uint64_t propval;

    if (strval == ((void*)0) || strval[0] == '\0') {
     objnum = zpool_prop_default_numeric(
         136);
     break;
    }

    error = dmu_objset_hold(strval, FTAG, &os);
    if (error != 0)
     break;






    if (dmu_objset_type(os) != DMU_OST_ZFS) {
     error = SET_ERROR(ENOTSUP);
    } else if ((error =
        dsl_prop_get_int_ds(dmu_objset_ds(os),
        zfs_prop_to_name(ZFS_PROP_COMPRESSION),
        &propval)) == 0 &&
        !BOOTFS_COMPRESS_VALID(propval)) {
     error = SET_ERROR(ENOTSUP);
    } else {
     objnum = dmu_objset_id(os);
    }
    dmu_objset_rele(os, FTAG);
   }
   break;

  case 131:
   error = nvpair_value_uint64(elem, &intval);
   if (!error && (intval < ZIO_FAILURE_MODE_WAIT ||
       intval > ZIO_FAILURE_MODE_PANIC))
    error = SET_ERROR(EINVAL);
   if (!error && spa_suspended(spa)) {
    spa->spa_failmode = intval;
    error = SET_ERROR(EIO);
   }
   break;

  case 135:
   if ((error = nvpair_value_string(elem, &strval)) != 0)
    break;

   if (strval[0] == '\0')
    break;

   if (strcmp(strval, "none") == 0)
    break;

   if (strval[0] != '/') {
    error = SET_ERROR(EINVAL);
    break;
   }

   slash = strrchr(strval, '/');
   ASSERT(slash != ((void*)0));

   if (slash[1] == '\0' || strcmp(slash, "/.") == 0 ||
       strcmp(slash, "/..") == 0)
    error = SET_ERROR(EINVAL);
   break;

  case 134:
   if ((error = nvpair_value_string(elem, &strval)) != 0)
    break;
   for (check = strval; *check != '\0'; check++) {






    if (*check >= 0x7f) {
     error = SET_ERROR(EINVAL);
     break;
    }
   }
   if (strlen(strval) > ZPROP_MAX_COMMENT)
    error = E2BIG;
   break;

  case 133:
   if (spa_version(spa) < SPA_VERSION_DEDUP)
    error = SET_ERROR(ENOTSUP);
   else
    error = nvpair_value_uint64(elem, &intval);
   if (error == 0 &&
       intval != 0 && intval < ZIO_DEDUPDITTO_MIN)
    error = SET_ERROR(EINVAL);
   break;
  }

  if (error)
   break;
 }

 if (!error && reset_bootfs) {
  error = nvlist_remove(props,
      zpool_prop_to_name(136), DATA_TYPE_STRING);

  if (!error) {
   error = nvlist_add_uint64(props,
       zpool_prop_to_name(136), objnum);
  }
 }

 return (error);
}
