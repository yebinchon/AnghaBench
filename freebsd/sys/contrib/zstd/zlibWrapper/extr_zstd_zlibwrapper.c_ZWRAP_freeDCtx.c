
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int customMem; struct TYPE_4__* version; int zbd; } ;
typedef TYPE_1__ ZWRAP_DCtx ;


 int ZSTD_free (TYPE_1__*,int ) ;
 int ZSTD_freeDStream (int ) ;

__attribute__((used)) static size_t ZWRAP_freeDCtx(ZWRAP_DCtx* zwd)
{
    if (zwd==((void*)0)) return 0;
    ZSTD_freeDStream(zwd->zbd);
    ZSTD_free(zwd->version, zwd->customMem);
    ZSTD_free(zwd, zwd->customMem);
    return 0;
}
