
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CStream ;
typedef int ZSTD_CDict ;


 int DEBUGLOG (int,char*) ;
 int FORWARD_IF_ERROR (int ) ;
 int ZSTD_CCtx_refCDict (int *,int const*) ;
 int ZSTD_CCtx_reset (int *,int ) ;
 int ZSTD_reset_session_only ;

size_t ZSTD_initCStream_usingCDict(ZSTD_CStream* zcs, const ZSTD_CDict* cdict)
{
    DEBUGLOG(4, "ZSTD_initCStream_usingCDict");
    FORWARD_IF_ERROR( ZSTD_CCtx_reset(zcs, ZSTD_reset_session_only) );
    FORWARD_IF_ERROR( ZSTD_CCtx_refCDict(zcs, cdict) );
    return 0;
}
