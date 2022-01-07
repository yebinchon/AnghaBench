
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zprop_source_t ;
typedef int zfsvfs_t ;
typedef int zfs_prop_t ;
struct TYPE_5__ {int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int B_TRUE ;
 scalar_t__ DATA_TYPE_NVLIST ;
 int FTAG ;
 int KM_SLEEP ;
 scalar_t__ PROP_TYPE_STRING ;
 int UINT64_MAX ;
 int VERIFY (int) ;
 int ZPL_VERSION_USERSPACE ;
 int ZPROP_INVAL ;
 int ZPROP_VALUE ;
 int dsl_dataset_set_refquota (char const*,int ,int ) ;
 int dsl_dataset_set_refreservation (char const*,int ,int ) ;
 int dsl_dir_activate_fs_ss_limit (char const*) ;
 int dsl_dir_set_quota (char const*,int ,int ) ;
 int dsl_dir_set_reservation (char const*,int ,int ) ;
 int kmem_free (TYPE_1__*,int) ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 scalar_t__ nvlist_lookup_nvpair (int *,int ,int **) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_type (int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 scalar_t__ nvpair_value_uint64 (int *,int *) ;
 int strcpy (int ,char const*) ;
 int zfs_ioc_userspace_upgrade (TYPE_1__*) ;
 int zfs_name_to_prop (char const*) ;
 scalar_t__ zfs_prop_get_type (int) ;
 int zfs_prop_set_userquota (char const*,int *) ;
 scalar_t__ zfs_prop_userquota (char const*) ;
 int zfs_set_version (int *,int ) ;
 int zfsvfs_hold (char const*,int ,int **,int ) ;
 int zfsvfs_rele (int *,int ) ;
 int zvol_set_volsize (char const*,int ) ;

__attribute__((used)) static int
zfs_prop_set_special(const char *dsname, zprop_source_t source,
    nvpair_t *pair)
{
 const char *propname = nvpair_name(pair);
 zfs_prop_t prop = zfs_name_to_prop(propname);
 uint64_t intval;
 int err = -1;

 if (prop == ZPROP_INVAL) {
  if (zfs_prop_userquota(propname))
   return (zfs_prop_set_userquota(dsname, pair));
  return (-1);
 }

 if (nvpair_type(pair) == DATA_TYPE_NVLIST) {
  nvlist_t *attrs;
  VERIFY(nvpair_value_nvlist(pair, &attrs) == 0);
  VERIFY(nvlist_lookup_nvpair(attrs, ZPROP_VALUE,
      &pair) == 0);
 }

 if (zfs_prop_get_type(prop) == PROP_TYPE_STRING)
  return (-1);

 VERIFY(0 == nvpair_value_uint64(pair, &intval));

 switch (prop) {
 case 134:
  err = dsl_dir_set_quota(dsname, source, intval);
  break;
 case 133:
  err = dsl_dataset_set_refquota(dsname, source, intval);
  break;
 case 135:
 case 130:
  if (intval == UINT64_MAX) {

   err = 0;
  } else {
   err = dsl_dir_activate_fs_ss_limit(dsname);
  }




  if (err == 0)
   err = -1;
  break;
 case 131:
  err = dsl_dir_set_reservation(dsname, source, intval);
  break;
 case 132:
  err = dsl_dataset_set_refreservation(dsname, source, intval);
  break;
 case 128:
  err = zvol_set_volsize(dsname, intval);
  break;
 case 129:
 {
  zfsvfs_t *zfsvfs;

  if ((err = zfsvfs_hold(dsname, FTAG, &zfsvfs, B_TRUE)) != 0)
   break;

  err = zfs_set_version(zfsvfs, intval);
  zfsvfs_rele(zfsvfs, FTAG);

  if (err == 0 && intval >= ZPL_VERSION_USERSPACE) {
   zfs_cmd_t *zc;

   zc = kmem_zalloc(sizeof (zfs_cmd_t), KM_SLEEP);
   (void) strcpy(zc->zc_name, dsname);
   (void) zfs_ioc_userspace_upgrade(zc);
   kmem_free(zc, sizeof (zfs_cmd_t));
  }
  break;
 }
 default:
  err = -1;
 }

 return (err);
}
