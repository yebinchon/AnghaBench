
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_DDict ;
struct TYPE_4__ {scalar_t__ streamStage; int dictUses; int const* ddict; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int RETURN_ERROR_IF (int,int ) ;
 int ZSTD_clearDict (TYPE_1__*) ;
 int ZSTD_use_indefinitely ;
 int stage_wrong ;
 scalar_t__ zdss_init ;

size_t ZSTD_DCtx_refDDict(ZSTD_DCtx* dctx, const ZSTD_DDict* ddict)
{
    RETURN_ERROR_IF(dctx->streamStage != zdss_init, stage_wrong);
    ZSTD_clearDict(dctx);
    if (ddict) {
        dctx->ddict = ddict;
        dctx->dictUses = ZSTD_use_indefinitely;
    }
    return 0;
}
