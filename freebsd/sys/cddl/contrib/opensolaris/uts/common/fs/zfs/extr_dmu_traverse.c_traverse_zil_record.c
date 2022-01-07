
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zilog_t ;
typedef int zbookmark_phys_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_9__ {int td_arg; int td_spa; int (* td_func ) (int ,int *,TYPE_4__*,int *,int *,int ) ;int td_objset; } ;
typedef TYPE_1__ traverse_data_t ;
struct TYPE_12__ {scalar_t__ blk_birth; } ;
struct TYPE_10__ {int lr_offset; int lr_foid; TYPE_4__ lr_blkptr; } ;
typedef TYPE_2__ lr_write_t ;
struct TYPE_11__ {scalar_t__ lrc_txtype; } ;
typedef TYPE_3__ lr_t ;
typedef TYPE_4__ blkptr_t ;


 int BP_GET_LSIZE (TYPE_4__*) ;
 scalar_t__ BP_IS_HOLE (TYPE_4__*) ;
 int SET_BOOKMARK (int *,int ,int ,int ,int) ;
 scalar_t__ TX_WRITE ;
 int ZB_ZIL_LEVEL ;
 int stub1 (int ,int *,TYPE_4__*,int *,int *,int ) ;

__attribute__((used)) static int
traverse_zil_record(zilog_t *zilog, lr_t *lrc, void *arg, uint64_t claim_txg)
{
 traverse_data_t *td = arg;

 if (lrc->lrc_txtype == TX_WRITE) {
  lr_write_t *lr = (lr_write_t *)lrc;
  blkptr_t *bp = &lr->lr_blkptr;
  zbookmark_phys_t zb;

  if (BP_IS_HOLE(bp))
   return (0);

  if (claim_txg == 0 || bp->blk_birth < claim_txg)
   return (0);

  SET_BOOKMARK(&zb, td->td_objset, lr->lr_foid,
      ZB_ZIL_LEVEL, lr->lr_offset / BP_GET_LSIZE(bp));

  (void) td->td_func(td->td_spa, zilog, bp, &zb, ((void*)0),
      td->td_arg);
 }
 return (0);
}
