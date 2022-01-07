
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zilog_t ;
typedef int uint64_t ;
struct TYPE_8__ {int blk_birth; } ;
struct TYPE_6__ {TYPE_5__ lr_blkptr; } ;
typedef TYPE_1__ lr_write_t ;
struct TYPE_7__ {scalar_t__ lrc_txtype; } ;
typedef TYPE_2__ lr_t ;


 scalar_t__ TX_WRITE ;
 int zil_claim_log_block (int *,TYPE_5__*,void*,int ) ;
 int zil_read_log_data (int *,TYPE_1__*,int *) ;

__attribute__((used)) static int
zil_claim_log_record(zilog_t *zilog, lr_t *lrc, void *tx, uint64_t first_txg)
{
 lr_write_t *lr = (lr_write_t *)lrc;
 int error;

 if (lrc->lrc_txtype != TX_WRITE)
  return (0);
 if (lr->lr_blkptr.blk_birth >= first_txg &&
     (error = zil_read_log_data(zilog, lr, ((void*)0))) != 0)
  return (error);
 return (zil_claim_log_block(zilog, &lr->lr_blkptr, tx, first_txg));
}
