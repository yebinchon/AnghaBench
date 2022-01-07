
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ zv_volblocksize; scalar_t__ zv_sync_cnt; int zv_dn; TYPE_2__* zv_zilog; } ;
typedef TYPE_1__ zvol_state_t ;
struct TYPE_13__ {scalar_t__ zl_logbias; int zl_spa; } ;
typedef TYPE_2__ zilog_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ ssize_t ;
typedef int offset_t ;
struct TYPE_14__ {int lr_blkptr; scalar_t__ lr_blkoff; scalar_t__ lr_length; int lr_offset; int lr_foid; } ;
typedef TYPE_3__ lr_write_t ;
typedef scalar_t__ itx_wr_state_t ;
struct TYPE_15__ {int itx_sync; TYPE_1__* itx_private; scalar_t__ itx_wr_state; int itx_lr; } ;
typedef TYPE_4__ itx_t ;
typedef int dmu_tx_t ;
typedef scalar_t__ boolean_t ;


 int BP_ZERO (int *) ;
 int B_FALSE ;
 int DMU_READ_NO_PREFETCH ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ P2PHASE (int ,scalar_t__) ;
 int TX_WRITE ;
 scalar_t__ WR_COPIED ;
 scalar_t__ WR_INDIRECT ;
 scalar_t__ WR_NEED_COPY ;
 scalar_t__ ZFS_LOGBIAS_THROUGHPUT ;
 scalar_t__ ZIL_MAX_COPIED_DATA ;
 int ZVOL_OBJ ;
 scalar_t__ dmu_read_by_dnode (int ,int ,scalar_t__,TYPE_3__*,int ) ;
 int spa_has_slogs (int ) ;
 int zil_itx_assign (TYPE_2__*,TYPE_4__*,int *) ;
 TYPE_4__* zil_itx_create (int ,int) ;
 int zil_itx_destroy (TYPE_4__*) ;
 scalar_t__ zil_replaying (TYPE_2__*,int *) ;
 scalar_t__ zvol_immediate_write_sz ;

__attribute__((used)) static void
zvol_log_write(zvol_state_t *zv, dmu_tx_t *tx, offset_t off, ssize_t resid,
    boolean_t sync)
{
 uint32_t blocksize = zv->zv_volblocksize;
 zilog_t *zilog = zv->zv_zilog;
 itx_wr_state_t write_state;

 if (zil_replaying(zilog, tx))
  return;

 if (zilog->zl_logbias == ZFS_LOGBIAS_THROUGHPUT)
  write_state = WR_INDIRECT;
 else if (!spa_has_slogs(zilog->zl_spa) &&
     resid >= blocksize && blocksize > zvol_immediate_write_sz)
  write_state = WR_INDIRECT;
 else if (sync)
  write_state = WR_COPIED;
 else
  write_state = WR_NEED_COPY;

 while (resid) {
  itx_t *itx;
  lr_write_t *lr;
  itx_wr_state_t wr_state = write_state;
  ssize_t len = resid;

  if (wr_state == WR_COPIED && resid > ZIL_MAX_COPIED_DATA)
   wr_state = WR_NEED_COPY;
  else if (wr_state == WR_INDIRECT)
   len = MIN(blocksize - P2PHASE(off, blocksize), resid);

  itx = zil_itx_create(TX_WRITE, sizeof (*lr) +
      (wr_state == WR_COPIED ? len : 0));
  lr = (lr_write_t *)&itx->itx_lr;
  if (wr_state == WR_COPIED && dmu_read_by_dnode(zv->zv_dn,
      off, len, lr + 1, DMU_READ_NO_PREFETCH) != 0) {
   zil_itx_destroy(itx);
   itx = zil_itx_create(TX_WRITE, sizeof (*lr));
   lr = (lr_write_t *)&itx->itx_lr;
   wr_state = WR_NEED_COPY;
  }

  itx->itx_wr_state = wr_state;
  lr->lr_foid = ZVOL_OBJ;
  lr->lr_offset = off;
  lr->lr_length = len;
  lr->lr_blkoff = 0;
  BP_ZERO(&lr->lr_blkptr);

  itx->itx_private = zv;

  if (!sync && (zv->zv_sync_cnt == 0))
   itx->itx_sync = B_FALSE;

  zil_itx_assign(zilog, itx, tx);

  off += len;
  resid -= len;
 }
}
