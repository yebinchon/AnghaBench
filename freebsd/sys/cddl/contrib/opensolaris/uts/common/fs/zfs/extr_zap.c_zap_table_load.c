
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int zt_blk; int zt_nextblk; } ;
typedef TYPE_1__ zap_table_phys_t ;
struct TYPE_10__ {int zap_dbuf; int zap_rwlock; } ;
typedef TYPE_2__ zap_t ;
typedef int uint64_t ;
typedef int dnode_t ;
struct TYPE_11__ {scalar_t__ db_data; } ;
typedef TYPE_3__ dmu_buf_t ;


 int ASSERT (int ) ;
 int DMU_READ_NO_PREFETCH ;
 int FTAG ;
 int FZAP_BLOCK_SHIFT (TYPE_2__*) ;
 int RW_LOCK_HELD (int *) ;
 int * dmu_buf_dnode_enter (int ) ;
 int dmu_buf_dnode_exit (int ) ;
 int dmu_buf_hold_by_dnode (int *,int,int ,TYPE_3__**,int ) ;
 int dmu_buf_rele (TYPE_3__*,int ) ;

__attribute__((used)) static int
zap_table_load(zap_t *zap, zap_table_phys_t *tbl, uint64_t idx, uint64_t *valp)
{
 int bs = FZAP_BLOCK_SHIFT(zap);

 ASSERT(RW_LOCK_HELD(&zap->zap_rwlock));

 uint64_t blk = idx >> (bs-3);
 uint64_t off = idx & ((1<<(bs-3))-1);






 dnode_t *dn = dmu_buf_dnode_enter(zap->zap_dbuf);
 dmu_buf_t *db;
 int err = dmu_buf_hold_by_dnode(dn,
     (tbl->zt_blk + blk) << bs, FTAG, &db, DMU_READ_NO_PREFETCH);
 dmu_buf_dnode_exit(zap->zap_dbuf);
 if (err != 0)
  return (err);
 *valp = ((uint64_t *)db->db_data)[off];
 dmu_buf_rele(db, FTAG);

 if (tbl->zt_nextblk != 0) {





  blk = (idx*2) >> (bs-3);

  dn = dmu_buf_dnode_enter(zap->zap_dbuf);
  err = dmu_buf_hold_by_dnode(dn,
      (tbl->zt_nextblk + blk) << bs, FTAG, &db,
      DMU_READ_NO_PREFETCH);
  dmu_buf_dnode_exit(zap->zap_dbuf);
  if (err == 0)
   dmu_buf_rele(db, FTAG);
 }
 return (err);
}
