#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_frameParameters ;
struct TYPE_12__ {unsigned long long const dictContentSize; scalar_t__ compressionLevel; } ;
typedef  TYPE_1__ ZSTD_CDict ;
struct TYPE_15__ {int /*<<< orphan*/  windowLog; } ;
struct TYPE_13__ {scalar_t__ attachDictPref; int /*<<< orphan*/  fParams; TYPE_4__ cParams; } ;
typedef  TYPE_2__ ZSTD_CCtx_params ;
struct TYPE_14__ {TYPE_2__ requestedParams; } ;
typedef  TYPE_3__ ZSTD_CCtx ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long const,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long long const ZSTD_CONTENTSIZE_UNKNOWN ; 
 unsigned long long const ZSTD_USE_CDICT_PARAMS_DICTSIZE_MULTIPLIER ; 
 unsigned long long const ZSTD_USE_CDICT_PARAMS_SRCSIZE_CUTOFF ; 
 size_t FUNC4 (TYPE_3__* const,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__ const* const,TYPE_2__*,unsigned long long const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_dct_auto ; 
 scalar_t__ ZSTD_dictForceLoad ; 
 int /*<<< orphan*/  ZSTD_dtlm_fast ; 
 TYPE_4__ FUNC5 (scalar_t__,unsigned long long const,unsigned long long const) ; 
 TYPE_4__ FUNC6 (TYPE_1__ const* const) ; 
 int FUNC7 (int const) ; 
 int /*<<< orphan*/  ZSTDb_not_buffered ; 
 int /*<<< orphan*/  dictionary_wrong ; 

size_t FUNC8(
    ZSTD_CCtx* const cctx, const ZSTD_CDict* const cdict,
    ZSTD_frameParameters const fParams, unsigned long long const pledgedSrcSize)
{
    FUNC0(4, "ZSTD_compressBegin_usingCDict_advanced");
    FUNC3(cdict==NULL, dictionary_wrong);
    {   ZSTD_CCtx_params params = cctx->requestedParams;
        params.cParams = ( pledgedSrcSize < ZSTD_USE_CDICT_PARAMS_SRCSIZE_CUTOFF
                        || pledgedSrcSize < cdict->dictContentSize * ZSTD_USE_CDICT_PARAMS_DICTSIZE_MULTIPLIER
                        || pledgedSrcSize == ZSTD_CONTENTSIZE_UNKNOWN
                        || cdict->compressionLevel == 0 )
                      && (params.attachDictPref != ZSTD_dictForceLoad) ?
                FUNC6(cdict)
              : FUNC5(cdict->compressionLevel,
                                pledgedSrcSize,
                                cdict->dictContentSize);
        /* Increase window log to fit the entire dictionary and source if the
         * source size is known. Limit the increase to 19, which is the
         * window log for compression level 1 with the largest source size.
         */
        if (pledgedSrcSize != ZSTD_CONTENTSIZE_UNKNOWN) {
            U32 const limitedSrcSize = (U32)FUNC2(pledgedSrcSize, 1U << 19);
            U32 const limitedSrcLog = limitedSrcSize > 1 ? FUNC7(limitedSrcSize - 1) + 1 : 1;
            params.cParams.windowLog = FUNC1(params.cParams.windowLog, limitedSrcLog);
        }
        params.fParams = fParams;
        return FUNC4(cctx,
                                           NULL, 0, ZSTD_dct_auto, ZSTD_dtlm_fast,
                                           cdict,
                                           &params, pledgedSrcSize,
                                           ZSTDb_not_buffered);
    }
}