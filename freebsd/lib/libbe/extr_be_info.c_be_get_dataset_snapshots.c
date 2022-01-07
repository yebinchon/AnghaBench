
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_5__ {int single_object; int * list; TYPE_2__* lbh; } ;
typedef TYPE_1__ prop_data_t ;
typedef int nvlist_t ;
struct TYPE_6__ {int lzh; } ;
typedef TYPE_2__ libbe_handle_t ;


 int BE_ERR_ZFSOPEN ;
 int ZFS_TYPE_FILESYSTEM ;
 int snapshot_proplist_update (int *,TYPE_1__*) ;
 int zfs_close (int *) ;
 int * zfs_open (int ,char const*,int ) ;

int
be_get_dataset_snapshots(libbe_handle_t *lbh, const char *name, nvlist_t *props)
{
 zfs_handle_t *ds_hdl;
 prop_data_t data;
 int ret;

 data.lbh = lbh;
 data.list = props;
 data.single_object = 0;
 if ((ds_hdl = zfs_open(lbh->lzh, name,
     ZFS_TYPE_FILESYSTEM)) == ((void*)0))
  return (BE_ERR_ZFSOPEN);

 ret = snapshot_proplist_update(ds_hdl, &data);
 zfs_close(ds_hdl);
 return (ret);
}
