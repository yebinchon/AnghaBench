
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEM_readLE32 (char const*) ;
 scalar_t__ ZSTD_MAGIC_DICTIONARY ;

unsigned ZDICT_getDictID(const void* dictBuffer, size_t dictSize)
{
    if (dictSize < 8) return 0;
    if (MEM_readLE32(dictBuffer) != ZSTD_MAGIC_DICTIONARY) return 0;
    return MEM_readLE32((const char*)dictBuffer + 4);
}
