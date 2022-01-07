
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ZSTD_decodeSeqHeaders (int ,int*,void*,int ) ;
 int g_cSize ;
 int g_zdc ;

__attribute__((used)) static size_t local_ZSTD_decodeSeqHeaders(const void* src, size_t srcSize, void* dst, size_t dstSize, void* buff2)
{
    int nbSeq;
    (void)src; (void)srcSize; (void)dst; (void)dstSize;
    return ZSTD_decodeSeqHeaders(g_zdc, &nbSeq, buff2, g_cSize);
}
