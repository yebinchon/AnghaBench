
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long ZSTD_CONTENTSIZE_ERROR ;

__attribute__((used)) static void ZSTD_errorFrameSizeInfoLegacy(size_t* cSize, unsigned long long* dBound, size_t ret)
{
    *cSize = ret;
    *dBound = ZSTD_CONTENTSIZE_ERROR;
}
