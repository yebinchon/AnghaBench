
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int cParams; } ;
struct TYPE_9__ {TYPE_2__ requestedParams; } ;
typedef TYPE_1__ ZSTD_CStream ;
typedef int ZSTD_CDict ;
typedef TYPE_2__ ZSTD_CCtx_params ;


 int DEBUGLOG (int,char*) ;
 int FORWARD_IF_ERROR (int ) ;
 int ZSTD_CCtx_loadDictionary (TYPE_1__*,void const*,size_t) ;
 int ZSTD_CCtx_refCDict (TYPE_1__*,int const*) ;
 int ZSTD_CCtx_reset (TYPE_1__*,int ) ;
 int ZSTD_CCtx_setPledgedSrcSize (TYPE_1__*,unsigned long long) ;
 int ZSTD_checkCParams (int ) ;
 int ZSTD_isError (int ) ;
 int ZSTD_reset_session_only ;
 int assert (int) ;

size_t ZSTD_initCStream_internal(ZSTD_CStream* zcs,
                    const void* dict, size_t dictSize, const ZSTD_CDict* cdict,
                    const ZSTD_CCtx_params* params,
                    unsigned long long pledgedSrcSize)
{
    DEBUGLOG(4, "ZSTD_initCStream_internal");
    FORWARD_IF_ERROR( ZSTD_CCtx_reset(zcs, ZSTD_reset_session_only) );
    FORWARD_IF_ERROR( ZSTD_CCtx_setPledgedSrcSize(zcs, pledgedSrcSize) );
    assert(!ZSTD_isError(ZSTD_checkCParams(params->cParams)));
    zcs->requestedParams = *params;
    assert(!((dict) && (cdict)));
    if (dict) {
        FORWARD_IF_ERROR( ZSTD_CCtx_loadDictionary(zcs, dict, dictSize) );
    } else {

        FORWARD_IF_ERROR( ZSTD_CCtx_refCDict(zcs, cdict) );
    }
    return 0;
}
