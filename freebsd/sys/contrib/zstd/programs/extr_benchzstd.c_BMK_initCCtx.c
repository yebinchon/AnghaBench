
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int strategy; scalar_t__ targetLength; scalar_t__ minMatch; scalar_t__ searchLog; scalar_t__ chainLog; scalar_t__ hashLog; scalar_t__ windowLog; } ;
typedef TYPE_1__ ZSTD_compressionParameters ;
typedef int ZSTD_CCtx ;
struct TYPE_6__ {int nbWorkers; int ldmFlag; int ldmMinMatch; int ldmHashLog; int ldmBucketSizeLog; int ldmHashRateLog; scalar_t__ literalCompressionMode; } ;
typedef TYPE_2__ BMK_advancedParams_t ;


 int CHECK_Z (int ) ;
 int ZSTD_CCtx_loadDictionary (int *,void const*,size_t) ;
 int ZSTD_CCtx_reset (int *,int ) ;
 int ZSTD_CCtx_setParameter (int *,int ,int) ;
 int ZSTD_c_chainLog ;
 int ZSTD_c_compressionLevel ;
 int ZSTD_c_enableLongDistanceMatching ;
 int ZSTD_c_hashLog ;
 int ZSTD_c_ldmBucketSizeLog ;
 int ZSTD_c_ldmHashLog ;
 int ZSTD_c_ldmHashRateLog ;
 int ZSTD_c_ldmMinMatch ;
 int ZSTD_c_literalCompressionMode ;
 int ZSTD_c_minMatch ;
 int ZSTD_c_nbWorkers ;
 int ZSTD_c_searchLog ;
 int ZSTD_c_strategy ;
 int ZSTD_c_targetLength ;
 int ZSTD_c_windowLog ;
 int ZSTD_reset_session_and_parameters ;

__attribute__((used)) static void
BMK_initCCtx(ZSTD_CCtx* ctx,
            const void* dictBuffer, size_t dictBufferSize,
            int cLevel,
            const ZSTD_compressionParameters* comprParams,
            const BMK_advancedParams_t* adv)
{
    ZSTD_CCtx_reset(ctx, ZSTD_reset_session_and_parameters);
    if (adv->nbWorkers==1) {
        CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_nbWorkers, 0));
    } else {
        CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_nbWorkers, adv->nbWorkers));
    }
    CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_compressionLevel, cLevel));
    CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_enableLongDistanceMatching, adv->ldmFlag));
    CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_ldmMinMatch, adv->ldmMinMatch));
    CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_ldmHashLog, adv->ldmHashLog));
    CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_ldmBucketSizeLog, adv->ldmBucketSizeLog));
    CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_ldmHashRateLog, adv->ldmHashRateLog));
    CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_windowLog, (int)comprParams->windowLog));
    CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_hashLog, (int)comprParams->hashLog));
    CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_chainLog, (int)comprParams->chainLog));
    CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_searchLog, (int)comprParams->searchLog));
    CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_minMatch, (int)comprParams->minMatch));
    CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_targetLength, (int)comprParams->targetLength));
    CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_literalCompressionMode, (int)adv->literalCompressionMode));
    CHECK_Z(ZSTD_CCtx_setParameter(ctx, ZSTD_c_strategy, comprParams->strategy));
    CHECK_Z(ZSTD_CCtx_loadDictionary(ctx, dictBuffer, dictBufferSize));
}
