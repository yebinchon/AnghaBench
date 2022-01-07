
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int customFree; int customAlloc; } ;
typedef TYPE_1__ ZSTD_customMem ;
typedef int ZSTD_CCtx ;


 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_STATIC_ASSERT (int) ;
 int ZSTD_initCCtx (int * const,TYPE_1__) ;
 scalar_t__ ZSTD_malloc (int,TYPE_1__) ;
 scalar_t__ zcss_init ;

ZSTD_CCtx* ZSTD_createCCtx_advanced(ZSTD_customMem customMem)
{
    ZSTD_STATIC_ASSERT(zcss_init==0);
    ZSTD_STATIC_ASSERT(ZSTD_CONTENTSIZE_UNKNOWN==(0ULL - 1));
    if (!customMem.customAlloc ^ !customMem.customFree) return ((void*)0);
    { ZSTD_CCtx* const cctx = (ZSTD_CCtx*)ZSTD_malloc(sizeof(ZSTD_CCtx), customMem);
        if (!cctx) return ((void*)0);
        ZSTD_initCCtx(cctx, customMem);
        return cctx;
    }
}
