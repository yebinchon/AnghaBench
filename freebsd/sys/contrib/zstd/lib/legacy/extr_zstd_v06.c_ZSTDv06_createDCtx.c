
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv06_DCtx ;


 int ZSTDv06_decompressBegin (int *) ;
 scalar_t__ malloc (int) ;

ZSTDv06_DCtx* ZSTDv06_createDCtx(void)
{
    ZSTDv06_DCtx* dctx = (ZSTDv06_DCtx*)malloc(sizeof(ZSTDv06_DCtx));
    if (dctx==((void*)0)) return ((void*)0);
    ZSTDv06_decompressBegin(dctx);
    return dctx;
}
