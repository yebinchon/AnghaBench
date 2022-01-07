
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct be_destroy_data {char* snapname; TYPE_1__* lbh; } ;
typedef int path ;
struct TYPE_2__ {int lzh; } ;


 int BE_MAXPATHLEN ;
 int ZFS_TYPE_SNAPSHOT ;
 int snprintf (char*,int,char*,char*,char*) ;
 int zfs_dataset_exists (int ,char*,int ) ;
 int zfs_destroy (int *,int) ;
 char* zfs_get_name (int *) ;
 int zfs_iter_children (int *,int (*) (int *,void*),void*) ;
 int zfs_iter_filesystems (int *,int (*) (int *,void*),void*) ;
 int * zfs_open (int ,char*,int ) ;

__attribute__((used)) static int
be_destroy_cb(zfs_handle_t *zfs_hdl, void *data)
{
 char path[BE_MAXPATHLEN];
 struct be_destroy_data *bdd;
 zfs_handle_t *snap;
 int err;

 bdd = (struct be_destroy_data *)data;
 if (bdd->snapname == ((void*)0)) {
  err = zfs_iter_children(zfs_hdl, be_destroy_cb, data);
  if (err != 0)
   return (err);
  return (zfs_destroy(zfs_hdl, 0));
 }

 err = zfs_iter_filesystems(zfs_hdl, be_destroy_cb, data);
 if (err != 0)
  return (err);
 snprintf(path, sizeof(path), "%s@%s", zfs_get_name(zfs_hdl),
     bdd->snapname);
 if (!zfs_dataset_exists(bdd->lbh->lzh, path, ZFS_TYPE_SNAPSHOT))
  return (0);
 snap = zfs_open(bdd->lbh->lzh, path, ZFS_TYPE_SNAPSHOT);
 if (snap != ((void*)0))
  zfs_destroy(snap, 0);
 return (0);
}
