
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int prop_data_t ;


 int prop_list_builder_cb ;
 int zfs_iter_snapshots_sorted (int *,int ,int *,int ,int ) ;

__attribute__((used)) static int
snapshot_proplist_update(zfs_handle_t *hdl, prop_data_t *data)
{

 return (zfs_iter_snapshots_sorted(hdl, prop_list_builder_cb, data,
     0, 0));
}
