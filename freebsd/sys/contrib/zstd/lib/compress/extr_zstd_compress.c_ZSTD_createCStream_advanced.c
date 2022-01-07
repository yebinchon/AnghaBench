
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_customMem ;
typedef int ZSTD_CStream ;


 int * ZSTD_createCCtx_advanced (int ) ;

ZSTD_CStream* ZSTD_createCStream_advanced(ZSTD_customMem customMem)
{
    return ZSTD_createCCtx_advanced(customMem);
}
