
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef int ZSTD_dictTableLoadMethod_e ;
typedef int ZSTD_dictContentType_e ;
typedef int ZSTD_buffered_policy_e ;
struct TYPE_17__ {int dictContentSize; scalar_t__ compressionLevel; void const* dictContent; } ;
typedef TYPE_2__ ZSTD_CDict ;
struct TYPE_15__ {int windowLog; } ;
struct TYPE_18__ {scalar_t__ attachDictPref; TYPE_14__ cParams; } ;
typedef TYPE_3__ ZSTD_CCtx_params ;
struct TYPE_16__ {int matchState; int prevCBlock; } ;
struct TYPE_19__ {scalar_t__ dictID; int entropyWorkspace; int workspace; TYPE_1__ blockState; } ;
typedef TYPE_4__ ZSTD_CCtx ;
typedef int U64 ;
typedef scalar_t__ U32 ;


 int DEBUGLOG (int,char*,int ) ;
 int FORWARD_IF_ERROR (size_t const) ;
 size_t const UINT_MAX ;
 int ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_USE_CDICT_PARAMS_DICTSIZE_MULTIPLIER ;
 int ZSTD_USE_CDICT_PARAMS_SRCSIZE_CUTOFF ;
 int ZSTD_checkCParams (TYPE_14__) ;
 size_t ZSTD_compress_insertDictionary (int ,int *,int *,TYPE_3__ const*,void const*,size_t,int ,int ,int ) ;
 scalar_t__ ZSTD_dictForceLoad ;
 int ZSTD_isError (int ) ;
 size_t const ZSTD_resetCCtx_internal (TYPE_4__*,TYPE_3__ const,int,int ,int ) ;
 size_t ZSTD_resetCCtx_usingCDict (TYPE_4__*,TYPE_2__ const*,TYPE_3__ const*,int,int ) ;
 int ZSTDcrp_makeClean ;
 int assert (int) ;

__attribute__((used)) static size_t ZSTD_compressBegin_internal(ZSTD_CCtx* cctx,
                                    const void* dict, size_t dictSize,
                                    ZSTD_dictContentType_e dictContentType,
                                    ZSTD_dictTableLoadMethod_e dtlm,
                                    const ZSTD_CDict* cdict,
                                    const ZSTD_CCtx_params* params, U64 pledgedSrcSize,
                                    ZSTD_buffered_policy_e zbuff)
{
    DEBUGLOG(4, "ZSTD_compressBegin_internal: wlog=%u", params->cParams.windowLog);

    assert(!ZSTD_isError(ZSTD_checkCParams(params->cParams)));
    assert(!((dict) && (cdict)));
    if ( (cdict)
      && (cdict->dictContentSize > 0)
      && ( pledgedSrcSize < ZSTD_USE_CDICT_PARAMS_SRCSIZE_CUTOFF
        || pledgedSrcSize < cdict->dictContentSize * ZSTD_USE_CDICT_PARAMS_DICTSIZE_MULTIPLIER
        || pledgedSrcSize == ZSTD_CONTENTSIZE_UNKNOWN
        || cdict->compressionLevel == 0)
      && (params->attachDictPref != ZSTD_dictForceLoad) ) {
        return ZSTD_resetCCtx_usingCDict(cctx, cdict, params, pledgedSrcSize, zbuff);
    }

    FORWARD_IF_ERROR( ZSTD_resetCCtx_internal(cctx, *params, pledgedSrcSize,
                                     ZSTDcrp_makeClean, zbuff) );
    { size_t const dictID = cdict ?
                ZSTD_compress_insertDictionary(
                        cctx->blockState.prevCBlock, &cctx->blockState.matchState,
                        &cctx->workspace, params, cdict->dictContent, cdict->dictContentSize,
                        dictContentType, dtlm, cctx->entropyWorkspace)
              : ZSTD_compress_insertDictionary(
                        cctx->blockState.prevCBlock, &cctx->blockState.matchState,
                        &cctx->workspace, params, dict, dictSize,
                        dictContentType, dtlm, cctx->entropyWorkspace);
        FORWARD_IF_ERROR(dictID);
        assert(dictID <= UINT_MAX);
        cctx->dictID = (U32)dictID;
    }
    return 0;
}
