
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dstBuffer; int srcBuffer; int dctx; } ;
typedef TYPE_1__ dRess_t ;


 int CHECK (int ) ;
 int ZSTD_freeDStream (int ) ;
 int free (int ) ;

__attribute__((used)) static void FIO_freeDResources(dRess_t ress)
{
    CHECK( ZSTD_freeDStream(ress.dctx) );
    free(ress.srcBuffer);
    free(ress.dstBuffer);
}
