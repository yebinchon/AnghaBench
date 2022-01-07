
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int tableLen; TYPE_1__* entries; } ;
struct TYPE_7__ {TYPE_2__ seekTable; } ;
typedef TYPE_3__ ZSTD_seekable ;
struct TYPE_5__ {unsigned long long dOffset; } ;


 unsigned long long ZSTD_SEEKABLE_FRAMEINDEX_TOOLARGE ;

unsigned long long ZSTD_seekable_getFrameDecompressedOffset(ZSTD_seekable* const zs, unsigned frameIndex)
{
    if (frameIndex >= zs->seekTable.tableLen) return ZSTD_SEEKABLE_FRAMEINDEX_TOOLARGE;
    return zs->seekTable.entries[frameIndex].dOffset;
}
