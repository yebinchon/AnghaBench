
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ tx_txg; } ;
typedef TYPE_2__ dmu_tx_t ;
typedef int dmu_buf_t ;
struct TYPE_9__ {scalar_t__ db_object; } ;
struct TYPE_11__ {scalar_t__ db_blkid; scalar_t__ db_level; TYPE_1__ db; int db_holds; } ;
typedef TYPE_3__ dmu_buf_impl_t ;


 int ASSERT (int) ;
 scalar_t__ DMU_BONUS_BLKID ;
 scalar_t__ DMU_META_DNODE_OBJECT ;
 int dbuf_dirty (TYPE_3__*,TYPE_2__*) ;
 int dbuf_noread (TYPE_3__*) ;
 scalar_t__ dmu_tx_private_ok (TYPE_2__*) ;
 int zfs_refcount_is_zero (int *) ;

void
dmu_buf_will_fill(dmu_buf_t *db_fake, dmu_tx_t *tx)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;

 ASSERT(db->db_blkid != DMU_BONUS_BLKID);
 ASSERT(tx->tx_txg != 0);
 ASSERT(db->db_level == 0);
 ASSERT(!zfs_refcount_is_zero(&db->db_holds));

 ASSERT(db->db.db_object != DMU_META_DNODE_OBJECT ||
     dmu_tx_private_ok(tx));

 dbuf_noread(db);
 (void) dbuf_dirty(db, tx);
}
