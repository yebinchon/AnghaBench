
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ z_sync_cnt; int z_id; scalar_t__ z_unlinked; } ;
typedef TYPE_1__ znode_t ;
typedef int zilog_t ;
typedef void* uint64_t ;
struct TYPE_8__ {void* lr_length; void* lr_offset; int lr_foid; } ;
typedef TYPE_2__ lr_truncate_t ;
struct TYPE_9__ {int itx_sync; int itx_lr; } ;
typedef TYPE_3__ itx_t ;
typedef int dmu_tx_t ;


 int zil_itx_assign (int *,TYPE_3__*,int *) ;
 TYPE_3__* zil_itx_create (int,int) ;
 scalar_t__ zil_replaying (int *,int *) ;

void
zfs_log_truncate(zilog_t *zilog, dmu_tx_t *tx, int txtype,
    znode_t *zp, uint64_t off, uint64_t len)
{
 itx_t *itx;
 lr_truncate_t *lr;

 if (zil_replaying(zilog, tx) || zp->z_unlinked)
  return;

 itx = zil_itx_create(txtype, sizeof (*lr));
 lr = (lr_truncate_t *)&itx->itx_lr;
 lr->lr_foid = zp->z_id;
 lr->lr_offset = off;
 lr->lr_length = len;

 itx->itx_sync = (zp->z_sync_cnt != 0);
 zil_itx_assign(zilog, itx, tx);
}
