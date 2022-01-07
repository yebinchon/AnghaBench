
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ZSTD_cParameter ;
struct TYPE_8__ {int enableLdm; int hashLog; int minMatchLength; int bucketSizeLog; int hashRateLog; } ;
struct TYPE_7__ {int contentSizeFlag; int checksumFlag; int noDictIDFlag; } ;
struct TYPE_6__ {int searchLog; int minMatch; int targetLength; int strategy; scalar_t__ chainLog; scalar_t__ hashLog; scalar_t__ windowLog; } ;
struct TYPE_9__ {int format; int compressionLevel; int forceWindow; int attachDictPref; int literalCompressionMode; int nbWorkers; int overlapLog; int rsyncable; scalar_t__ srcSizeHint; scalar_t__ targetCBlockSize; TYPE_3__ ldmParams; scalar_t__ jobSize; TYPE_2__ fParams; TYPE_1__ cParams; } ;
typedef TYPE_4__ ZSTD_CCtx_params ;


 scalar_t__ INT_MAX ;
 int RETURN_ERROR (int ,char*) ;
 int assert (int) ;
 int parameter_unsupported ;

size_t ZSTD_CCtxParams_getParameter(
        ZSTD_CCtx_params* CCtxParams, ZSTD_cParameter param, int* value)
{
    switch(param)
    {
    case 145 :
        *value = CCtxParams->format;
        break;
    case 151 :
        *value = CCtxParams->compressionLevel;
        break;
    case 128 :
        *value = (int)CCtxParams->cParams.windowLog;
        break;
    case 144 :
        *value = (int)CCtxParams->cParams.hashLog;
        break;
    case 153 :
        *value = (int)CCtxParams->cParams.chainLog;
        break;
    case 133 :
        *value = CCtxParams->cParams.searchLog;
        break;
    case 137 :
        *value = CCtxParams->cParams.minMatch;
        break;
    case 129 :
        *value = CCtxParams->cParams.targetLength;
        break;
    case 131 :
        *value = (unsigned)CCtxParams->cParams.strategy;
        break;
    case 150 :
        *value = CCtxParams->fParams.contentSizeFlag;
        break;
    case 152 :
        *value = CCtxParams->fParams.checksumFlag;
        break;
    case 149 :
        *value = !CCtxParams->fParams.noDictIDFlag;
        break;
    case 146 :
        *value = CCtxParams->forceWindow;
        break;
    case 147 :
        *value = CCtxParams->attachDictPref;
        break;
    case 138 :
        *value = CCtxParams->literalCompressionMode;
        break;
    case 136 :

        assert(CCtxParams->nbWorkers == 0);

        *value = CCtxParams->nbWorkers;
        break;
    case 143 :

        RETURN_ERROR(parameter_unsupported, "not compiled with multithreading");





    case 135 :

        RETURN_ERROR(parameter_unsupported, "not compiled with multithreading");




    case 134 :

        RETURN_ERROR(parameter_unsupported, "not compiled with multithreading");




    case 148 :
        *value = CCtxParams->ldmParams.enableLdm;
        break;
    case 141 :
        *value = CCtxParams->ldmParams.hashLog;
        break;
    case 139 :
        *value = CCtxParams->ldmParams.minMatchLength;
        break;
    case 142 :
        *value = CCtxParams->ldmParams.bucketSizeLog;
        break;
    case 140 :
        *value = CCtxParams->ldmParams.hashRateLog;
        break;
    case 130 :
        *value = (int)CCtxParams->targetCBlockSize;
        break;
    case 132 :
        *value = (int)CCtxParams->srcSizeHint;
        break;
    default: RETURN_ERROR(parameter_unsupported, "unknown parameter");
    }
    return 0;
}
