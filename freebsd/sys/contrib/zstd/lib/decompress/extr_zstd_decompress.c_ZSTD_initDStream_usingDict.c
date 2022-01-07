
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int format; } ;
typedef TYPE_1__ ZSTD_DStream ;


 int DEBUGLOG (int,char*) ;
 int FORWARD_IF_ERROR (int ) ;
 int ZSTD_DCtx_loadDictionary (TYPE_1__*,void const*,size_t) ;
 int ZSTD_DCtx_reset (TYPE_1__*,int ) ;
 int ZSTD_reset_session_only ;
 size_t ZSTD_startingInputLength (int ) ;

size_t ZSTD_initDStream_usingDict(ZSTD_DStream* zds, const void* dict, size_t dictSize)
{
    DEBUGLOG(4, "ZSTD_initDStream_usingDict");
    FORWARD_IF_ERROR( ZSTD_DCtx_reset(zds, ZSTD_reset_session_only) );
    FORWARD_IF_ERROR( ZSTD_DCtx_loadDictionary(zds, dict, dictSize) );
    return ZSTD_startingInputLength(zds->format);
}
