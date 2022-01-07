
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct be_mountcheck_info {char const* path; int * name; } ;
struct TYPE_5__ {int single_object; int * list; TYPE_2__* lbh; } ;
typedef TYPE_1__ prop_data_t ;
typedef int nvlist_t ;
struct TYPE_6__ {int root; int lzh; } ;
typedef TYPE_2__ libbe_handle_t ;


 int BE_ERR_ZFSOPEN ;
 int BE_MAXPATHLEN ;
 int ZFS_TYPE_FILESYSTEM ;
 int be_mountcheck_cb ;
 int bzero (char**,int) ;
 int free (int *) ;
 int prop_list_builder_cb (int *,TYPE_1__*) ;
 int zfs_close (int *) ;
 int zfs_iter_filesystems (int *,int ,struct be_mountcheck_info*) ;
 int * zfs_open (int ,int ,int ) ;

int
be_mounted_at(libbe_handle_t *lbh, const char *path, nvlist_t *details)
{
 char be[BE_MAXPATHLEN];
 zfs_handle_t *root_hdl;
 struct be_mountcheck_info info;
 prop_data_t propinfo;

 bzero(&be, BE_MAXPATHLEN);
 if ((root_hdl = zfs_open(lbh->lzh, lbh->root,
     ZFS_TYPE_FILESYSTEM)) == ((void*)0))
  return (BE_ERR_ZFSOPEN);

 info.path = path;
 info.name = ((void*)0);
 zfs_iter_filesystems(root_hdl, be_mountcheck_cb, &info);
 zfs_close(root_hdl);

 if (info.name != ((void*)0)) {
  if (details != ((void*)0)) {
   if ((root_hdl = zfs_open(lbh->lzh, lbh->root,
       ZFS_TYPE_FILESYSTEM)) == ((void*)0)) {
    free(info.name);
    return (BE_ERR_ZFSOPEN);
   }

   propinfo.lbh = lbh;
   propinfo.list = details;
   propinfo.single_object = 0;
   prop_list_builder_cb(root_hdl, &propinfo);
   zfs_close(root_hdl);
  }
  free(info.name);
  return (0);
 }
 return (1);
}
