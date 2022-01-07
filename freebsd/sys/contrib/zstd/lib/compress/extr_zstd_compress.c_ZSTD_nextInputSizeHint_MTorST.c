
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nbWorkers; } ;
struct TYPE_6__ {int * mtctx; TYPE_1__ appliedParams; } ;
typedef TYPE_2__ ZSTD_CCtx ;


 size_t ZSTDMT_nextInputSizeHint (int *) ;
 size_t ZSTD_nextInputSizeHint (TYPE_2__ const*) ;
 int assert (int ) ;

__attribute__((used)) static size_t ZSTD_nextInputSizeHint_MTorST(const ZSTD_CCtx* cctx)
{






    return ZSTD_nextInputSizeHint(cctx);

}
