
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv01_Dctx ;


 int ZSTDv01_resetDCtx (int *) ;
 scalar_t__ malloc (int) ;

ZSTDv01_Dctx* ZSTDv01_createDCtx(void)
{
    ZSTDv01_Dctx* dctx = (ZSTDv01_Dctx*)malloc(sizeof(ZSTDv01_Dctx));
    if (dctx==((void*)0)) return ((void*)0);
    ZSTDv01_resetDCtx(dctx);
    return dctx;
}
