
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int zfs_handle_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
struct TYPE_9__ {int lzh; int active_phandle; int bootfs; } ;
typedef TYPE_1__ libbe_handle_t ;
typedef int buf ;


 int BE_ERR_NOPOOL ;
 int BE_ERR_SUCCESS ;
 int BE_ERR_UNKNOWN ;
 int BE_MAXPATHLEN ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ be_deactivate (TYPE_1__*,int ) ;
 int be_exists (TYPE_1__*,char*) ;
 scalar_t__ be_get_dataset_props (TYPE_1__*,char*,int *) ;
 scalar_t__ be_prop_list_alloc (int **) ;
 int be_root_concat (TYPE_1__*,char const*,char*) ;
 int be_set_nextboot (TYPE_1__*,int *,int ,char*) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_string (int *,char*,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int set_error (TYPE_1__*,int) ;
 int snprintf (char*,int,char*,char*) ;
 int zfs_close (int *) ;
 int * zfs_open (int ,char*,int ) ;
 int zfs_promote (int *) ;
 int * zpool_get_config (int ,int *) ;
 int zpool_set_prop (int ,char*,char*) ;

int
be_activate(libbe_handle_t *lbh, const char *bootenv, bool temporary)
{
 char be_path[BE_MAXPATHLEN];
 char buf[BE_MAXPATHLEN];
 nvlist_t *config, *dsprops, *vdevs;
 char *origin;
 uint64_t pool_guid;
 zfs_handle_t *zhp;
 int err;

 be_root_concat(lbh, bootenv, be_path);


 if ((err = be_exists(lbh, be_path)) != 0)
  return (set_error(lbh, err));

 if (temporary) {
  config = zpool_get_config(lbh->active_phandle, ((void*)0));
  if (config == ((void*)0))

   return (set_error(lbh, BE_ERR_UNKNOWN));

  if (nvlist_lookup_uint64(config, ZPOOL_CONFIG_POOL_GUID,
      &pool_guid) != 0)

   return (set_error(lbh, BE_ERR_UNKNOWN));


  snprintf(buf, sizeof(buf), "zfs:%s:", be_path);


  if (nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
      &vdevs) != 0)
   return (set_error(lbh, BE_ERR_NOPOOL));

  return (be_set_nextboot(lbh, vdevs, pool_guid, buf));
 } else {
  if (be_deactivate(lbh, lbh->bootfs) != 0)
   return (-1);


  err = zpool_set_prop(lbh->active_phandle, "bootfs", be_path);
  if (err)
   return (-1);

  zhp = zfs_open(lbh->lzh, be_path, ZFS_TYPE_FILESYSTEM);
  if (zhp == ((void*)0))
   return (-1);

  if (be_prop_list_alloc(&dsprops) != 0)
   return (-1);

  if (be_get_dataset_props(lbh, be_path, dsprops) != 0) {
   nvlist_free(dsprops);
   return (-1);
  }

  if (nvlist_lookup_string(dsprops, "origin", &origin) == 0)
   err = zfs_promote(zhp);
  nvlist_free(dsprops);

  zfs_close(zhp);

  if (err)
   return (-1);
 }

 return (BE_ERR_SUCCESS);
}
