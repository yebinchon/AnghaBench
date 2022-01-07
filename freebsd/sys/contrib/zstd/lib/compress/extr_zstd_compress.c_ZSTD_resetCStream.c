
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CStream ;
typedef unsigned long long U64 ;


 int DEBUGLOG (int,char*,unsigned int) ;
 int FORWARD_IF_ERROR (int ) ;
 int ZSTD_CCtx_reset (int *,int ) ;
 int ZSTD_CCtx_setPledgedSrcSize (int *,unsigned long long const) ;
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_reset_session_only ;

size_t ZSTD_resetCStream(ZSTD_CStream* zcs, unsigned long long pss)
{




    U64 const pledgedSrcSize = (pss==0) ? ZSTD_CONTENTSIZE_UNKNOWN : pss;
    DEBUGLOG(4, "ZSTD_resetCStream: pledgedSrcSize = %u", (unsigned)pledgedSrcSize);
    FORWARD_IF_ERROR( ZSTD_CCtx_reset(zcs, ZSTD_reset_session_only) );
    FORWARD_IF_ERROR( ZSTD_CCtx_setPledgedSrcSize(zcs, pledgedSrcSize) );
    return 0;
}
