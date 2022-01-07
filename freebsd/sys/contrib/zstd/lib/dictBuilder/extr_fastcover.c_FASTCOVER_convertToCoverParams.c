
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int shrinkDict; int zParams; int splitPoint; int nbThreads; int steps; int d; int k; } ;
typedef TYPE_1__ ZDICT_fastCover_params_t ;
struct TYPE_6__ {int shrinkDict; int zParams; int splitPoint; int nbThreads; int steps; int d; int k; } ;
typedef TYPE_2__ ZDICT_cover_params_t ;



__attribute__((used)) static void
FASTCOVER_convertToCoverParams(ZDICT_fastCover_params_t fastCoverParams,
                               ZDICT_cover_params_t* coverParams)
{
    coverParams->k = fastCoverParams.k;
    coverParams->d = fastCoverParams.d;
    coverParams->steps = fastCoverParams.steps;
    coverParams->nbThreads = fastCoverParams.nbThreads;
    coverParams->splitPoint = fastCoverParams.splitPoint;
    coverParams->zParams = fastCoverParams.zParams;
    coverParams->shrinkDict = fastCoverParams.shrinkDict;
}
