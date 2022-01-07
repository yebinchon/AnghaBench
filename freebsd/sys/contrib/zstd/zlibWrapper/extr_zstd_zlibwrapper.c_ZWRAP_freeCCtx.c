
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int customMem; int zbc; } ;
typedef TYPE_1__ ZWRAP_CCtx ;


 int ZSTD_free (TYPE_1__*,int ) ;
 int ZSTD_freeCStream (int ) ;

__attribute__((used)) static size_t ZWRAP_freeCCtx(ZWRAP_CCtx* zwc)
{
    if (zwc==((void*)0)) return 0;
    ZSTD_freeCStream(zwc->zbc);
    ZSTD_free(zwc, zwc->customMem);
    return 0;
}
