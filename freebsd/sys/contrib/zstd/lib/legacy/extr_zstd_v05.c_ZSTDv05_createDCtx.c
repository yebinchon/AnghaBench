
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv05_DCtx ;


 int ZSTDv05_decompressBegin (int *) ;
 scalar_t__ malloc (int) ;

ZSTDv05_DCtx* ZSTDv05_createDCtx(void)
{
    ZSTDv05_DCtx* dctx = (ZSTDv05_DCtx*)malloc(sizeof(ZSTDv05_DCtx));
    if (dctx==((void*)0)) return ((void*)0);
    ZSTDv05_decompressBegin(dctx);
    return dctx;
}
