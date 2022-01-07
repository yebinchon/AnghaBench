
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct libbe_deep_clone {char* snapname; int depth_limit; int depth; TYPE_1__* lbh; } ;
struct libbe_dccb {int * props; int * zhp; TYPE_1__* lbh; } ;
typedef int snap_path ;
typedef int nvlist_t ;
typedef int be_path ;
struct TYPE_2__ {int lzh; } ;


 int BE_ERR_EXISTS ;
 scalar_t__ BE_ERR_SUCCESS ;
 int BE_ERR_UNKNOWN ;
 int BE_ERR_ZFSCLONE ;
 int BE_ERR_ZFSOPEN ;
 int BE_MAXPATHLEN ;
 int B_FALSE ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int ZFS_TYPE_DATASET ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_SNAPSHOT ;
 scalar_t__ ZPROP_INVAL ;
 int be_deep_clone_prop ;
 scalar_t__ be_get_path (struct libbe_deep_clone*,char const*,char*,int) ;
 int nvlist_add_string (int *,char*,char*) ;
 int nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int set_error (TYPE_1__*,int) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int zfs_clone (int *,char*,int *) ;
 int zfs_close (int *) ;
 scalar_t__ zfs_dataset_exists (int ,char*,int ) ;
 char* zfs_get_name (int *) ;
 int zfs_iter_filesystems (int *,int (*) (int *,void*),struct libbe_deep_clone*) ;
 int * zfs_open (int ,char*,int ) ;
 scalar_t__ zprop_iter (int ,struct libbe_dccb*,int ,int ,int ) ;

__attribute__((used)) static int
be_clone_cb(zfs_handle_t *ds, void *data)
{
 int err;
 char be_path[BE_MAXPATHLEN];
 char snap_path[BE_MAXPATHLEN];
 const char *dspath;
 zfs_handle_t *snap_hdl;
 nvlist_t *props;
 struct libbe_deep_clone *ldc;
 struct libbe_dccb dccb;

 ldc = (struct libbe_deep_clone *)data;
 dspath = zfs_get_name(ds);

 snprintf(snap_path, sizeof(snap_path), "%s@%s", dspath, ldc->snapname);


 if (be_get_path(ldc, dspath, be_path, sizeof(be_path)) != BE_ERR_SUCCESS)
  return (set_error(ldc->lbh, BE_ERR_UNKNOWN));


 if (zfs_dataset_exists(ldc->lbh->lzh, be_path, ZFS_TYPE_DATASET))
  return (set_error(ldc->lbh, BE_ERR_EXISTS));


 if (!zfs_dataset_exists(ldc->lbh->lzh, snap_path, ZFS_TYPE_SNAPSHOT))
  return (0);

 if ((snap_hdl =
     zfs_open(ldc->lbh->lzh, snap_path, ZFS_TYPE_SNAPSHOT)) == ((void*)0))
  return (set_error(ldc->lbh, BE_ERR_ZFSOPEN));

 nvlist_alloc(&props, NV_UNIQUE_NAME, KM_SLEEP);
 nvlist_add_string(props, "canmount", "noauto");

 dccb.lbh = ldc->lbh;
 dccb.zhp = ds;
 dccb.props = props;
 if (zprop_iter(be_deep_clone_prop, &dccb, B_FALSE, B_FALSE,
     ZFS_TYPE_FILESYSTEM) == ZPROP_INVAL)
  return (-1);

 if ((err = zfs_clone(snap_hdl, be_path, props)) != 0)
  return (set_error(ldc->lbh, BE_ERR_ZFSCLONE));

 nvlist_free(props);
 zfs_close(snap_hdl);

 if (ldc->depth_limit == -1 || ldc->depth < ldc->depth_limit) {
  ldc->depth++;
  err = zfs_iter_filesystems(ds, be_clone_cb, ldc);
  ldc->depth--;
 }

 return (set_error(ldc->lbh, err));
}
