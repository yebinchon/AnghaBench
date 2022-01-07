
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ZSTD_frameParameters ;
struct TYPE_7__ {int fParams; } ;
struct TYPE_8__ {TYPE_1__ requestedParams; } ;
typedef TYPE_2__ ZSTD_CStream ;
typedef int ZSTD_CDict ;


 int DEBUGLOG (int,char*) ;
 int FORWARD_IF_ERROR (int ) ;
 int ZSTD_CCtx_refCDict (TYPE_2__*,int const*) ;
 int ZSTD_CCtx_reset (TYPE_2__*,int ) ;
 int ZSTD_CCtx_setPledgedSrcSize (TYPE_2__*,unsigned long long) ;
 int ZSTD_reset_session_only ;

size_t ZSTD_initCStream_usingCDict_advanced(ZSTD_CStream* zcs,
                                            const ZSTD_CDict* cdict,
                                            ZSTD_frameParameters fParams,
                                            unsigned long long pledgedSrcSize)
{
    DEBUGLOG(4, "ZSTD_initCStream_usingCDict_advanced");
    FORWARD_IF_ERROR( ZSTD_CCtx_reset(zcs, ZSTD_reset_session_only) );
    FORWARD_IF_ERROR( ZSTD_CCtx_setPledgedSrcSize(zcs, pledgedSrcSize) );
    zcs->requestedParams.fParams = fParams;
    FORWARD_IF_ERROR( ZSTD_CCtx_refCDict(zcs, cdict) );
    return 0;
}
