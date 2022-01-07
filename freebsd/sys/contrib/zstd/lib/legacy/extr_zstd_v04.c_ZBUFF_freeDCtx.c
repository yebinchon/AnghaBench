
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* outBuff; struct TYPE_4__* inBuff; int zc; } ;
typedef TYPE_1__ ZBUFF_DCtx ;


 int ZSTD_freeDCtx (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static size_t ZBUFF_freeDCtx(ZBUFF_DCtx* zbc)
{
    if (zbc==((void*)0)) return 0;
    ZSTD_freeDCtx(zbc->zc);
    free(zbc->inBuff);
    free(zbc->outBuff);
    free(zbc);
    return 0;
}
