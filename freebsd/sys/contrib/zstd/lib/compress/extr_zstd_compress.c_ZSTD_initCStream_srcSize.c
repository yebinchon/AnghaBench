
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CStream ;
typedef unsigned long long U64 ;


 int DEBUGLOG (int,char*) ;
 int FORWARD_IF_ERROR (int ) ;
 int ZSTD_CCtx_refCDict (int *,int *) ;
 int ZSTD_CCtx_reset (int *,int ) ;
 int ZSTD_CCtx_setParameter (int *,int ,int) ;
 int ZSTD_CCtx_setPledgedSrcSize (int *,unsigned long long const) ;
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_c_compressionLevel ;
 int ZSTD_reset_session_only ;

size_t ZSTD_initCStream_srcSize(ZSTD_CStream* zcs, int compressionLevel, unsigned long long pss)
{




    U64 const pledgedSrcSize = (pss==0) ? ZSTD_CONTENTSIZE_UNKNOWN : pss;
    DEBUGLOG(4, "ZSTD_initCStream_srcSize");
    FORWARD_IF_ERROR( ZSTD_CCtx_reset(zcs, ZSTD_reset_session_only) );
    FORWARD_IF_ERROR( ZSTD_CCtx_refCDict(zcs, ((void*)0)) );
    FORWARD_IF_ERROR( ZSTD_CCtx_setParameter(zcs, ZSTD_c_compressionLevel, compressionLevel) );
    FORWARD_IF_ERROR( ZSTD_CCtx_setPledgedSrcSize(zcs, pledgedSrcSize) );
    return 0;
}
