
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSTD_decompress (void*,size_t,void const*,size_t) ;

size_t ZSTDv03_decompress( void* dst, size_t maxOriginalSize,
                     const void* src, size_t compressedSize)
{
    return ZSTD_decompress(dst, maxOriginalSize, src, compressedSize);
}
