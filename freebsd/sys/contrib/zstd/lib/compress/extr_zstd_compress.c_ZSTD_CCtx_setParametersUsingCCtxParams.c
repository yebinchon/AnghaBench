
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_CCtx_params ;
struct TYPE_3__ {scalar_t__ streamStage; int cdict; int requestedParams; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 int DEBUGLOG (int,char*) ;
 int RETURN_ERROR_IF (int,int ) ;
 int stage_wrong ;
 scalar_t__ zcss_init ;

size_t ZSTD_CCtx_setParametersUsingCCtxParams(
        ZSTD_CCtx* cctx, const ZSTD_CCtx_params* params)
{
    DEBUGLOG(4, "ZSTD_CCtx_setParametersUsingCCtxParams");
    RETURN_ERROR_IF(cctx->streamStage != zcss_init, stage_wrong);
    RETURN_ERROR_IF(cctx->cdict, stage_wrong);

    cctx->requestedParams = *params;
    return 0;
}
