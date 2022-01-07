
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSTD_decompress (void*,size_t,void*,int ) ;
 int g_cSize ;

__attribute__((used)) static size_t local_ZSTD_decompress(const void* src, size_t srcSize,
                                    void* dst, size_t dstSize,
                                    void* buff2)
{
    (void)src; (void)srcSize;
    return ZSTD_decompress(dst, dstSize, buff2, g_cSize);
}
