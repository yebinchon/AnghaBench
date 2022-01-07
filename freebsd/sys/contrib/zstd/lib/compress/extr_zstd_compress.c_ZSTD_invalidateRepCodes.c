
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int window; } ;
struct TYPE_8__ {TYPE_2__ matchState; TYPE_1__* prevCBlock; } ;
struct TYPE_9__ {TYPE_3__ blockState; } ;
typedef TYPE_4__ ZSTD_CCtx ;
struct TYPE_6__ {scalar_t__* rep; } ;


 int ZSTD_REP_NUM ;
 int ZSTD_window_hasExtDict (int ) ;
 int assert (int) ;

void ZSTD_invalidateRepCodes(ZSTD_CCtx* cctx) {
    int i;
    for (i=0; i<ZSTD_REP_NUM; i++) cctx->blockState.prevCBlock->rep[i] = 0;
    assert(!ZSTD_window_hasExtDict(cctx->blockState.matchState.window));
}
