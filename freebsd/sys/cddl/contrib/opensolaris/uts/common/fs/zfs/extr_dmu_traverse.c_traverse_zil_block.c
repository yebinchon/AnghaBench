
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zilog_t ;
typedef int zbookmark_phys_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_8__ {int td_arg; int td_spa; int (* td_func ) (int ,int *,TYPE_3__*,int *,int *,int ) ;int td_objset; } ;
typedef TYPE_2__ traverse_data_t ;
struct TYPE_7__ {int * zc_word; } ;
struct TYPE_9__ {scalar_t__ blk_birth; TYPE_1__ blk_cksum; } ;
typedef TYPE_3__ blkptr_t ;


 scalar_t__ BP_IS_HOLE (TYPE_3__*) ;
 int SET_BOOKMARK (int *,int ,int ,int ,int ) ;
 int ZB_ZIL_LEVEL ;
 int ZB_ZIL_OBJECT ;
 size_t ZIL_ZC_SEQ ;
 scalar_t__ spa_min_claim_txg (int ) ;
 int stub1 (int ,int *,TYPE_3__*,int *,int *,int ) ;

__attribute__((used)) static int
traverse_zil_block(zilog_t *zilog, blkptr_t *bp, void *arg, uint64_t claim_txg)
{
 traverse_data_t *td = arg;
 zbookmark_phys_t zb;

 if (BP_IS_HOLE(bp))
  return (0);

 if (claim_txg == 0 && bp->blk_birth >= spa_min_claim_txg(td->td_spa))
  return (-1);

 SET_BOOKMARK(&zb, td->td_objset, ZB_ZIL_OBJECT, ZB_ZIL_LEVEL,
     bp->blk_cksum.zc_word[ZIL_ZC_SEQ]);

 (void) td->td_func(td->td_spa, zilog, bp, &zb, ((void*)0), td->td_arg);

 return (0);
}
