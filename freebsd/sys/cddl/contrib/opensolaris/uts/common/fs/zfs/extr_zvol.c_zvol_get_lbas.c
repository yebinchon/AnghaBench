
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zv_volsize; int zv_volblocksize; int * zv_objset; } ;
typedef TYPE_1__ zvol_state_t ;
struct maparg {int ma_blks; TYPE_1__* ma_zv; } ;
typedef int objset_t ;


 int EIO ;
 int TRAVERSE_PRE ;
 int TRAVERSE_PREFETCH_METADATA ;
 int dmu_objset_ds (int *) ;
 int dmu_objset_pool (int *) ;
 int traverse_dataset (int ,int ,int,int ,struct maparg*) ;
 int txg_wait_synced (int ,int ) ;
 int zvol_free_extents (TYPE_1__*) ;
 int zvol_map_block ;

__attribute__((used)) static int
zvol_get_lbas(zvol_state_t *zv)
{
 objset_t *os = zv->zv_objset;
 struct maparg ma;
 int err;

 ma.ma_zv = zv;
 ma.ma_blks = 0;
 zvol_free_extents(zv);


 txg_wait_synced(dmu_objset_pool(os), 0);
 err = traverse_dataset(dmu_objset_ds(os), 0,
     TRAVERSE_PRE | TRAVERSE_PREFETCH_METADATA, zvol_map_block, &ma);
 if (err || ma.ma_blks != (zv->zv_volsize / zv->zv_volblocksize)) {
  zvol_free_extents(zv);
  return (err ? err : EIO);
 }

 return (0);
}
