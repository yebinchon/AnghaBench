
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CStream ;


 int DEBUGLOG (int,char*) ;
 int FORWARD_IF_ERROR (int ) ;
 int ZSTD_CCtx_loadDictionary (int *,void const*,size_t) ;
 int ZSTD_CCtx_reset (int *,int ) ;
 int ZSTD_CCtx_setParameter (int *,int ,int) ;
 int ZSTD_c_compressionLevel ;
 int ZSTD_reset_session_only ;

size_t ZSTD_initCStream_usingDict(ZSTD_CStream* zcs, const void* dict, size_t dictSize, int compressionLevel)
{
    DEBUGLOG(4, "ZSTD_initCStream_usingDict");
    FORWARD_IF_ERROR( ZSTD_CCtx_reset(zcs, ZSTD_reset_session_only) );
    FORWARD_IF_ERROR( ZSTD_CCtx_setParameter(zcs, ZSTD_c_compressionLevel, compressionLevel) );
    FORWARD_IF_ERROR( ZSTD_CCtx_loadDictionary(zcs, dict, dictSize) );
    return 0;
}
