
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZBUFF_CCtx ;


 size_t ZSTD_initCStream_usingDict (int *,void const*,size_t,int) ;

size_t ZBUFF_compressInitDictionary(ZBUFF_CCtx* zbc, const void* dict, size_t dictSize, int compressionLevel)
{
    return ZSTD_initCStream_usingDict(zbc, dict, dictSize, compressionLevel);
}
