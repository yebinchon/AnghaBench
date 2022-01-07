
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_6__ {TYPE_1__* lbh; } ;
typedef TYPE_2__ prop_data_t ;
struct TYPE_5__ {int root; int lzh; } ;


 int BE_ERR_ZFSOPEN ;
 int ZFS_TYPE_FILESYSTEM ;
 int prop_list_builder_cb ;
 int zfs_close (int *) ;
 int zfs_iter_filesystems (int *,int ,TYPE_2__*) ;
 int * zfs_open (int ,int ,int ) ;

int
be_proplist_update(prop_data_t *data)
{
 zfs_handle_t *root_hdl;

 if ((root_hdl = zfs_open(data->lbh->lzh, data->lbh->root,
     ZFS_TYPE_FILESYSTEM)) == ((void*)0))
  return (BE_ERR_ZFSOPEN);


 zfs_iter_filesystems(root_hdl, prop_list_builder_cb, data);

 zfs_close(root_hdl);

 return (0);
}
