
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv03_Dctx ;


 scalar_t__ ZSTD_createDCtx () ;

ZSTDv03_Dctx* ZSTDv03_createDCtx(void)
{
    return (ZSTDv03_Dctx*)ZSTD_createDCtx();
}
