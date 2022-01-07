
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSTD_decodeLiteralsBlock (int ,void*,int ) ;
 int g_cSize ;
 int g_zdc ;

__attribute__((used)) static size_t local_ZSTD_decodeLiteralsBlock(const void* src, size_t srcSize, void* dst, size_t dstSize, void* buff2)
{
    (void)src; (void)srcSize; (void)dst; (void)dstSize;
    return ZSTD_decodeLiteralsBlock(g_zdc, buff2, g_cSize);
}
