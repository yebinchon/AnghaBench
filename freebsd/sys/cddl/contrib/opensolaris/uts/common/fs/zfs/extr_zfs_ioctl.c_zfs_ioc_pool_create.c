
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* zc_name; scalar_t__ zc_nvlist_conf_size; scalar_t__ zc_nvlist_src_size; int zc_iflags; int zc_nvlist_src; int zc_nvlist_conf; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int uint64_t ;
typedef int nvlist_t ;


 int EINVAL ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int SET_ERROR (int ) ;
 int SPA_VERSION ;
 int SPA_VERSION_IS_SUPPORTED (int ) ;
 int VERIFY (int) ;
 int ZPOOL_PROP_TNAME ;
 int ZPOOL_PROP_VERSION ;
 int ZPOOL_ROOTFS_PROPS ;
 int ZPROP_SRC_LOCAL ;
 int get_nvlist (int ,scalar_t__,int ,int **) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_dup (int *,int **,int ) ;
 int nvlist_free (int *) ;
 int nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int nvlist_lookup_uint64 (int *,int ,int *) ;
 int nvlist_remove_all (int *,int ) ;
 int spa_create (char*,int *,int *,int *) ;
 int spa_destroy (char*) ;
 int zfs_fill_zplprops_root (int ,int *,int *,int *) ;
 int zfs_set_prop_nvlist (char*,int ,int *,int *) ;
 int zpool_prop_to_name (int ) ;

__attribute__((used)) static int
zfs_ioc_pool_create(zfs_cmd_t *zc)
{
 int error;
 nvlist_t *config, *props = ((void*)0);
 nvlist_t *rootprops = ((void*)0);
 nvlist_t *zplprops = ((void*)0);
 char *spa_name = zc->zc_name;

 if (error = get_nvlist(zc->zc_nvlist_conf, zc->zc_nvlist_conf_size,
     zc->zc_iflags, &config))
  return (error);

 if (zc->zc_nvlist_src_size != 0 && (error =
     get_nvlist(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
     zc->zc_iflags, &props))) {
  nvlist_free(config);
  return (error);
 }

 if (props) {
  nvlist_t *nvl = ((void*)0);
  uint64_t version = SPA_VERSION;
  char *tname;

  (void) nvlist_lookup_uint64(props,
      zpool_prop_to_name(ZPOOL_PROP_VERSION), &version);
  if (!SPA_VERSION_IS_SUPPORTED(version)) {
   error = SET_ERROR(EINVAL);
   goto pool_props_bad;
  }
  (void) nvlist_lookup_nvlist(props, ZPOOL_ROOTFS_PROPS, &nvl);
  if (nvl) {
   error = nvlist_dup(nvl, &rootprops, KM_SLEEP);
   if (error != 0) {
    nvlist_free(config);
    nvlist_free(props);
    return (error);
   }
   (void) nvlist_remove_all(props, ZPOOL_ROOTFS_PROPS);
  }
  VERIFY(nvlist_alloc(&zplprops, NV_UNIQUE_NAME, KM_SLEEP) == 0);
  error = zfs_fill_zplprops_root(version, rootprops,
      zplprops, ((void*)0));
  if (error != 0)
   goto pool_props_bad;

  if (nvlist_lookup_string(props,
      zpool_prop_to_name(ZPOOL_PROP_TNAME), &tname) == 0)
   spa_name = tname;
 }

 error = spa_create(zc->zc_name, config, props, zplprops);




 if (!error && (error = zfs_set_prop_nvlist(spa_name,
     ZPROP_SRC_LOCAL, rootprops, ((void*)0))) != 0)
  (void) spa_destroy(spa_name);

pool_props_bad:
 nvlist_free(rootprops);
 nvlist_free(zplprops);
 nvlist_free(config);
 nvlist_free(props);

 return (error);
}
