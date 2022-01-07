
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cctx; int dstBuffer; int srcBuffer; } ;
typedef TYPE_1__ cRess_t ;


 int ZSTD_freeCStream (int ) ;
 int free (int ) ;

__attribute__((used)) static void FIO_freeCResources(cRess_t ress)
{
    free(ress.srcBuffer);
    free(ress.dstBuffer);
    ZSTD_freeCStream(ress.cctx);
}
