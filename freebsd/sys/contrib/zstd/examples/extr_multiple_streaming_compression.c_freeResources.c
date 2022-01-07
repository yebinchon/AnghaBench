
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffOut; int buffIn; int cctx; } ;
typedef TYPE_1__ resources ;


 int ZSTD_freeCCtx (int ) ;
 int free (int ) ;

__attribute__((used)) static void freeResources(resources ress)
{
    ZSTD_freeCCtx(ress.cctx);
    free(ress.buffIn);
    free(ress.buffOut);
}
