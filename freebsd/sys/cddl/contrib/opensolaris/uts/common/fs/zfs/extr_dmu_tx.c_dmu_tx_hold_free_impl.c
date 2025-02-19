
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zio_t ;
typedef int uint64_t ;
struct TYPE_11__ {int dn_maxblkid; int dn_datablksz; int dn_datablkshift; int dn_nlevels; int dn_indblkshift; } ;
typedef TYPE_2__ dnode_t ;
struct TYPE_12__ {scalar_t__ tx_txg; int tx_err; TYPE_1__* tx_pool; } ;
typedef TYPE_3__ dmu_tx_t ;
struct TYPE_13__ {int txh_memory_tohold; TYPE_2__* txh_dnode; TYPE_3__* txh_tx; } ;
typedef TYPE_4__ dmu_tx_hold_t ;
struct TYPE_10__ {int dp_spa; } ;


 int ASSERT (int) ;
 int DMU_OBJECT_END ;
 int ESRCH ;
 int FTAG ;
 int IS_P2ALIGNED (int,int) ;
 int SPA_BLKPTRSHIFT ;
 int ZIO_FLAG_CANFAIL ;
 int dmu_tx_check_ioerr (int *,TYPE_2__*,int,int) ;
 int dmu_tx_count_dnode (TYPE_4__*) ;
 int dmu_tx_count_write (TYPE_4__*,int,int) ;
 int dnode_next_offset (TYPE_2__*,int ,int*,int,int,int ) ;
 int zfs_refcount_add_many (int *,int,int ) ;
 int * zio_root (int ,int *,int *,int ) ;
 int zio_wait (int *) ;

__attribute__((used)) static void
dmu_tx_hold_free_impl(dmu_tx_hold_t *txh, uint64_t off, uint64_t len)
{
 dmu_tx_t *tx;
 dnode_t *dn;
 int err;

 tx = txh->txh_tx;
 ASSERT(tx->tx_txg == 0);

 dn = txh->txh_dnode;
 dmu_tx_count_dnode(txh);

 if (off >= (dn->dn_maxblkid + 1) * dn->dn_datablksz)
  return;
 if (len == DMU_OBJECT_END)
  len = (dn->dn_maxblkid + 1) * dn->dn_datablksz - off;
 if (dn->dn_datablkshift == 0) {
  if (off != 0 || len < dn->dn_datablksz)
   dmu_tx_count_write(txh, 0, dn->dn_datablksz);
 } else {

  if (!IS_P2ALIGNED(off, 1 << dn->dn_datablkshift))
   dmu_tx_count_write(txh, off, 1);

  if (!IS_P2ALIGNED(off + len, 1 << dn->dn_datablkshift))
   dmu_tx_count_write(txh, off + len, 1);
 }




 if (dn->dn_nlevels > 1) {
  int shift = dn->dn_datablkshift + dn->dn_indblkshift -
      SPA_BLKPTRSHIFT;
  uint64_t start = off >> shift;
  uint64_t end = (off + len) >> shift;

  ASSERT(dn->dn_indblkshift != 0);






  if (dn->dn_datablkshift == 0)
   start = end = 0;

  zio_t *zio = zio_root(tx->tx_pool->dp_spa,
      ((void*)0), ((void*)0), ZIO_FLAG_CANFAIL);
  for (uint64_t i = start; i <= end; i++) {
   uint64_t ibyte = i << shift;
   err = dnode_next_offset(dn, 0, &ibyte, 2, 1, 0);
   i = ibyte >> shift;
   if (err == ESRCH || i > end)
    break;
   if (err != 0) {
    tx->tx_err = err;
    (void) zio_wait(zio);
    return;
   }

   (void) zfs_refcount_add_many(&txh->txh_memory_tohold,
       1 << dn->dn_indblkshift, FTAG);

   err = dmu_tx_check_ioerr(zio, dn, 1, i);
   if (err != 0) {
    tx->tx_err = err;
    (void) zio_wait(zio);
    return;
   }
  }
  err = zio_wait(zio);
  if (err != 0) {
   tx->tx_err = err;
   return;
  }
 }
}
