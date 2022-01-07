
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ZSTD_strategy ;
typedef int ZSTD_literalCompressionMode_e ;
typedef int ZSTD_format_e ;
typedef int ZSTD_dictAttachPref_e ;
typedef int ZSTD_cParameter ;
struct TYPE_8__ {int enableLdm; int hashLog; int minMatchLength; int bucketSizeLog; int hashRateLog; } ;
struct TYPE_7__ {int contentSizeFlag; int checksumFlag; int noDictIDFlag; } ;
struct TYPE_6__ {size_t windowLog; size_t hashLog; size_t chainLog; int minMatch; int targetLength; int strategy; void* searchLog; } ;
struct TYPE_9__ {int compressionLevel; int forceWindow; int attachDictPref; int literalCompressionMode; int nbWorkers; int jobSize; int overlapLog; int rsyncable; int targetCBlockSize; int srcSizeHint; TYPE_3__ ldmParams; TYPE_2__ fParams; TYPE_1__ cParams; int format; } ;
typedef TYPE_4__ ZSTD_CCtx_params ;
typedef void* U32 ;


 int BOUNDCHECK (int const,int const) ;
 int DEBUGLOG (int,char*,int,...) ;
 int FORWARD_IF_ERROR (int ) ;
 int RETURN_ERROR (int ,char*) ;
 int RETURN_ERROR_IF (int,int ,...) ;
 int ZSTDMT_JOBSIZE_MIN ;
 int ZSTD_HASHLOG_MIN ;
 int ZSTD_WINDOWLOG_MAX ;
 int ZSTD_cParam_clampBounds (int const,int*) ;
 int assert (int) ;
 int parameter_outOfBound ;
 int parameter_unsupported ;

size_t ZSTD_CCtxParams_setParameter(ZSTD_CCtx_params* CCtxParams,
                                    ZSTD_cParameter param, int value)
{
    DEBUGLOG(4, "ZSTD_CCtxParams_setParameter (%i, %i)", (int)param, value);
    switch(param)
    {
    case 145 :
        BOUNDCHECK(145, value);
        CCtxParams->format = (ZSTD_format_e)value;
        return (size_t)CCtxParams->format;

    case 151 : {
        FORWARD_IF_ERROR(ZSTD_cParam_clampBounds(param, &value));
        if (value) {
            CCtxParams->compressionLevel = value;
        }
        if (CCtxParams->compressionLevel >= 0) return (size_t)CCtxParams->compressionLevel;
        return 0;
    }

    case 128 :
        if (value!=0)
            BOUNDCHECK(128, value);
        CCtxParams->cParams.windowLog = (U32)value;
        return CCtxParams->cParams.windowLog;

    case 144 :
        if (value!=0)
            BOUNDCHECK(144, value);
        CCtxParams->cParams.hashLog = (U32)value;
        return CCtxParams->cParams.hashLog;

    case 153 :
        if (value!=0)
            BOUNDCHECK(153, value);
        CCtxParams->cParams.chainLog = (U32)value;
        return CCtxParams->cParams.chainLog;

    case 133 :
        if (value!=0)
            BOUNDCHECK(133, value);
        CCtxParams->cParams.searchLog = (U32)value;
        return (size_t)value;

    case 137 :
        if (value!=0)
            BOUNDCHECK(137, value);
        CCtxParams->cParams.minMatch = value;
        return CCtxParams->cParams.minMatch;

    case 129 :
        BOUNDCHECK(129, value);
        CCtxParams->cParams.targetLength = value;
        return CCtxParams->cParams.targetLength;

    case 131 :
        if (value!=0)
            BOUNDCHECK(131, value);
        CCtxParams->cParams.strategy = (ZSTD_strategy)value;
        return (size_t)CCtxParams->cParams.strategy;

    case 150 :

        DEBUGLOG(4, "set content size flag = %u", (value!=0));
        CCtxParams->fParams.contentSizeFlag = value != 0;
        return CCtxParams->fParams.contentSizeFlag;

    case 152 :

        CCtxParams->fParams.checksumFlag = value != 0;
        return CCtxParams->fParams.checksumFlag;

    case 149 :
        DEBUGLOG(4, "set dictIDFlag = %u", (value!=0));
        CCtxParams->fParams.noDictIDFlag = !value;
        return !CCtxParams->fParams.noDictIDFlag;

    case 146 :
        CCtxParams->forceWindow = (value != 0);
        return CCtxParams->forceWindow;

    case 147 : {
        const ZSTD_dictAttachPref_e pref = (ZSTD_dictAttachPref_e)value;
        BOUNDCHECK(147, pref);
        CCtxParams->attachDictPref = pref;
        return CCtxParams->attachDictPref;
    }

    case 138 : {
        const ZSTD_literalCompressionMode_e lcm = (ZSTD_literalCompressionMode_e)value;
        BOUNDCHECK(138, lcm);
        CCtxParams->literalCompressionMode = lcm;
        return CCtxParams->literalCompressionMode;
    }

    case 136 :

        RETURN_ERROR_IF(value!=0, parameter_unsupported, "not compiled with multithreading");
        return 0;






    case 143 :

        RETURN_ERROR_IF(value!=0, parameter_unsupported, "not compiled with multithreading");
        return 0;
    case 135 :

        RETURN_ERROR_IF(value!=0, parameter_unsupported, "not compiled with multithreading");
        return 0;






    case 134 :

        RETURN_ERROR_IF(value!=0, parameter_unsupported, "not compiled with multithreading");
        return 0;






    case 148 :
        CCtxParams->ldmParams.enableLdm = (value!=0);
        return CCtxParams->ldmParams.enableLdm;

    case 141 :
        if (value!=0)
            BOUNDCHECK(141, value);
        CCtxParams->ldmParams.hashLog = value;
        return CCtxParams->ldmParams.hashLog;

    case 139 :
        if (value!=0)
            BOUNDCHECK(139, value);
        CCtxParams->ldmParams.minMatchLength = value;
        return CCtxParams->ldmParams.minMatchLength;

    case 142 :
        if (value!=0)
            BOUNDCHECK(142, value);
        CCtxParams->ldmParams.bucketSizeLog = value;
        return CCtxParams->ldmParams.bucketSizeLog;

    case 140 :
        RETURN_ERROR_IF(value > ZSTD_WINDOWLOG_MAX - ZSTD_HASHLOG_MIN,
                        parameter_outOfBound);
        CCtxParams->ldmParams.hashRateLog = value;
        return CCtxParams->ldmParams.hashRateLog;

    case 130 :
        if (value!=0)
            BOUNDCHECK(130, value);
        CCtxParams->targetCBlockSize = value;
        return CCtxParams->targetCBlockSize;

    case 132 :
        if (value!=0)
            BOUNDCHECK(132, value);
        CCtxParams->srcSizeHint = value;
        return CCtxParams->srcSizeHint;

    default: RETURN_ERROR(parameter_unsupported, "unknown parameter");
    }
}
