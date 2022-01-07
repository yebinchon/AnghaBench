
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct be_destroy_data {int * snapname; TYPE_1__* lbh; } ;
typedef int origin ;
struct TYPE_6__ {char* root; int lzh; int bootfs; int rootfs; } ;
typedef TYPE_1__ libbe_handle_t ;


 int BE_DESTROY_AUTOORIGIN ;
 int BE_DESTROY_FORCE ;
 int BE_DESTROY_ORIGIN ;
 int BE_DESTROY_WANTORIGIN ;
 int BE_ERR_DESTROYACT ;
 int BE_ERR_DESTROYMNT ;
 int BE_ERR_INVORIGIN ;
 int BE_ERR_NOENT ;
 int BE_ERR_NOMEM ;
 int BE_ERR_NOORIGIN ;
 int BE_ERR_UNKNOWN ;
 int BE_ERR_ZFSOPEN ;
 int BE_MAXPATHLEN ;
 int EBUSY ;
 int ZFS_PROP_ORIGIN ;
 int ZFS_TYPE_DATASET ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_SNAPSHOT ;
 int be_destroy_cb (int *,struct be_destroy_data*) ;
 scalar_t__ be_is_auto_snapshot_name (TYPE_1__*,char*) ;
 int be_root_concat (TYPE_1__*,char const*,char*) ;
 int free (int *) ;
 int set_error (TYPE_1__*,int ) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,int ) ;
 int * strdup (char*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;
 int zfs_close (int *) ;
 int zfs_dataset_exists (int ,char*,int ) ;
 int zfs_is_mounted (int *,int *) ;
 int * zfs_open (int ,char*,int ) ;
 scalar_t__ zfs_prop_get (int *,int ,char*,int,int *,int *,int ,int) ;
 int zfs_unmount (int *,int *,int ) ;

int
be_destroy(libbe_handle_t *lbh, const char *name, int options)
{
 struct be_destroy_data bdd;
 char origin[BE_MAXPATHLEN], path[BE_MAXPATHLEN];
 zfs_handle_t *fs;
 char *snapdelim;
 int err, force, mounted;
 size_t rootlen;

 bdd.lbh = lbh;
 bdd.snapname = ((void*)0);
 force = options & BE_DESTROY_FORCE;
 *origin = '\0';

 be_root_concat(lbh, name, path);

 if ((snapdelim = strchr(path, '@')) == ((void*)0)) {
  if (!zfs_dataset_exists(lbh->lzh, path, ZFS_TYPE_FILESYSTEM))
   return (set_error(lbh, BE_ERR_NOENT));

  if (strcmp(path, lbh->rootfs) == 0 ||
      strcmp(path, lbh->bootfs) == 0)
   return (set_error(lbh, BE_ERR_DESTROYACT));

  fs = zfs_open(lbh->lzh, path, ZFS_TYPE_FILESYSTEM);
  if (fs == ((void*)0))
   return (set_error(lbh, BE_ERR_ZFSOPEN));

  if ((options & BE_DESTROY_WANTORIGIN) != 0 &&
      zfs_prop_get(fs, ZFS_PROP_ORIGIN, origin, sizeof(origin),
      ((void*)0), ((void*)0), 0, 1) != 0 &&
      (options & BE_DESTROY_ORIGIN) != 0)
   return (set_error(lbh, BE_ERR_NOORIGIN));
  if ((options & BE_DESTROY_AUTOORIGIN) != 0 && *origin != '\0' &&
      be_is_auto_snapshot_name(lbh, origin))
   options |= BE_DESTROY_ORIGIN;


  if ((mounted = zfs_is_mounted(fs, ((void*)0))) != 0) {
   if (force) {
    zfs_unmount(fs, ((void*)0), 0);
   } else {
    free(bdd.snapname);
    return (set_error(lbh, BE_ERR_DESTROYMNT));
   }
  }
 } else {
  if (!zfs_dataset_exists(lbh->lzh, path, ZFS_TYPE_SNAPSHOT))
   return (set_error(lbh, BE_ERR_NOENT));

  bdd.snapname = strdup(snapdelim + 1);
  if (bdd.snapname == ((void*)0))
   return (set_error(lbh, BE_ERR_NOMEM));
  *snapdelim = '\0';
  fs = zfs_open(lbh->lzh, path, ZFS_TYPE_DATASET);
  if (fs == ((void*)0)) {
   free(bdd.snapname);
   return (set_error(lbh, BE_ERR_ZFSOPEN));
  }
 }

 err = be_destroy_cb(fs, &bdd);
 zfs_close(fs);
 free(bdd.snapname);
 if (err != 0) {

  if (err == EBUSY)
   return (set_error(lbh, BE_ERR_DESTROYMNT));
  return (set_error(lbh, BE_ERR_UNKNOWN));
 }

 if ((options & BE_DESTROY_ORIGIN) == 0)
  return (0);


 rootlen = strlen(lbh->root);
 if (*origin == '\0' || strlen(origin) <= rootlen + 1)
  return (set_error(lbh, BE_ERR_INVORIGIN));






 if (strncmp(origin, lbh->root, rootlen) != 0 || origin[rootlen] != '/')
  return (0);

 return (be_destroy(lbh, origin + rootlen + 1,
     options & ~BE_DESTROY_ORIGIN));
}
