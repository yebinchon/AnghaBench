
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DCtx ;


 int ZSTD_resetDCtx (int *) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static ZSTD_DCtx* ZSTD_createDCtx(void)
{
    ZSTD_DCtx* dctx = (ZSTD_DCtx*)malloc(sizeof(ZSTD_DCtx));
    if (dctx==((void*)0)) return ((void*)0);
    ZSTD_resetDCtx(dctx);
    return dctx;
}
