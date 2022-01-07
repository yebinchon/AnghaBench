
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t compressedSize; } ;
typedef TYPE_1__ ZSTD_frameSizeInfo ;


 TYPE_1__ ZSTD_findFrameSizeInfo (void const*,size_t) ;

size_t ZSTD_findFrameCompressedSize(const void *src, size_t srcSize)
{
    ZSTD_frameSizeInfo const frameSizeInfo = ZSTD_findFrameSizeInfo(src, srcSize);
    return frameSizeInfo.compressedSize;
}
