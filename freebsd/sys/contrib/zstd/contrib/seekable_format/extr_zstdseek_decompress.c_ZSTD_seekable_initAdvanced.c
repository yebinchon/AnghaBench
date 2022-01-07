
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_seekable_customFile ;
struct TYPE_4__ {int dstream; scalar_t__ curFrame; scalar_t__ decompressedOffset; int src; } ;
typedef TYPE_1__ ZSTD_seekable ;
typedef scalar_t__ U64 ;
typedef scalar_t__ U32 ;


 size_t ZSTD_initDStream (int ) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 size_t ZSTD_seekable_loadSeekTable (TYPE_1__*) ;

size_t ZSTD_seekable_initAdvanced(ZSTD_seekable* zs, ZSTD_seekable_customFile src)
{
    zs->src = src;

    { const size_t seekTableInit = ZSTD_seekable_loadSeekTable(zs);
        if (ZSTD_isError(seekTableInit)) return seekTableInit; }

    zs->decompressedOffset = (U64)-1;
    zs->curFrame = (U32)-1;

    { const size_t dstreamInit = ZSTD_initDStream(zs->dstream);
        if (ZSTD_isError(dstreamInit)) return dstreamInit; }
    return 0;
}
