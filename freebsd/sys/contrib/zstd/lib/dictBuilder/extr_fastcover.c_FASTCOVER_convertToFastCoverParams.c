
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int f; unsigned int accel; int shrinkDict; int zParams; int splitPoint; int nbThreads; int steps; int d; int k; } ;
typedef TYPE_1__ ZDICT_fastCover_params_t ;
struct TYPE_6__ {int shrinkDict; int zParams; int splitPoint; int nbThreads; int steps; int d; int k; } ;
typedef TYPE_2__ ZDICT_cover_params_t ;



__attribute__((used)) static void
FASTCOVER_convertToFastCoverParams(ZDICT_cover_params_t coverParams,
                                   ZDICT_fastCover_params_t* fastCoverParams,
                                   unsigned f, unsigned accel)
{
    fastCoverParams->k = coverParams.k;
    fastCoverParams->d = coverParams.d;
    fastCoverParams->steps = coverParams.steps;
    fastCoverParams->nbThreads = coverParams.nbThreads;
    fastCoverParams->splitPoint = coverParams.splitPoint;
    fastCoverParams->f = f;
    fastCoverParams->accel = accel;
    fastCoverParams->zParams = coverParams.zParams;
    fastCoverParams->shrinkDict = coverParams.shrinkDict;
}
