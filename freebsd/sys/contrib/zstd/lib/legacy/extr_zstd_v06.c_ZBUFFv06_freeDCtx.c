
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* outBuff; struct TYPE_4__* inBuff; int zd; } ;
typedef TYPE_1__ ZBUFFv06_DCtx ;


 int ZSTDv06_freeDCtx (int ) ;
 int free (TYPE_1__*) ;

size_t ZBUFFv06_freeDCtx(ZBUFFv06_DCtx* zbd)
{
    if (zbd==((void*)0)) return 0;
    ZSTDv06_freeDCtx(zbd->zd);
    free(zbd->inBuff);
    free(zbd->outBuff);
    free(zbd);
    return 0;
}
