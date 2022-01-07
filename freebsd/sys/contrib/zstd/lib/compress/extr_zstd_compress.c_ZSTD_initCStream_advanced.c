
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ contentSizeFlag; } ;
struct TYPE_11__ {int cParams; TYPE_1__ fParams; } ;
typedef TYPE_2__ ZSTD_parameters ;
struct TYPE_12__ {int requestedParams; } ;
typedef TYPE_3__ ZSTD_CStream ;
typedef unsigned long long U64 ;


 int DEBUGLOG (int,char*) ;
 int FORWARD_IF_ERROR (int ) ;
 int ZSTD_CCtx_loadDictionary (TYPE_3__*,void const*,size_t) ;
 int ZSTD_CCtx_reset (TYPE_3__*,int ) ;
 int ZSTD_CCtx_setPledgedSrcSize (TYPE_3__*,unsigned long long const) ;
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_assignParamsToCCtxParams (int *,TYPE_2__) ;
 int ZSTD_checkCParams (int ) ;
 int ZSTD_reset_session_only ;

size_t ZSTD_initCStream_advanced(ZSTD_CStream* zcs,
                                 const void* dict, size_t dictSize,
                                 ZSTD_parameters params, unsigned long long pss)
{




    U64 const pledgedSrcSize = (pss==0 && params.fParams.contentSizeFlag==0) ? ZSTD_CONTENTSIZE_UNKNOWN : pss;
    DEBUGLOG(4, "ZSTD_initCStream_advanced");
    FORWARD_IF_ERROR( ZSTD_CCtx_reset(zcs, ZSTD_reset_session_only) );
    FORWARD_IF_ERROR( ZSTD_CCtx_setPledgedSrcSize(zcs, pledgedSrcSize) );
    FORWARD_IF_ERROR( ZSTD_checkCParams(params.cParams) );
    zcs->requestedParams = ZSTD_assignParamsToCCtxParams(&zcs->requestedParams, params);
    FORWARD_IF_ERROR( ZSTD_CCtx_loadDictionary(zcs, dict, dictSize) );
    return 0;
}
