#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {unsigned int windowLog; scalar_t__ strategy; size_t hashLog; size_t chainLog; } ;
struct TYPE_17__ {int hashLog3; int /*<<< orphan*/  loadedDictEnd; int /*<<< orphan*/  nextToUpdate; int /*<<< orphan*/  window; int /*<<< orphan*/  hashTable3; int /*<<< orphan*/ * chainTable; int /*<<< orphan*/ * hashTable; TYPE_5__ cParams; } ;
typedef  TYPE_4__ ZSTD_matchState_t ;
typedef  TYPE_5__ ZSTD_compressionParameters ;
typedef  int /*<<< orphan*/  ZSTD_buffered_policy_e ;
struct TYPE_19__ {int /*<<< orphan*/  cBlockState; int /*<<< orphan*/  dictID; TYPE_4__ matchState; } ;
typedef  TYPE_6__ ZSTD_CDict ;
struct TYPE_20__ {TYPE_5__ cParams; } ;
typedef  TYPE_7__ ZSTD_CCtx_params ;
struct TYPE_16__ {int /*<<< orphan*/ * prevCBlock; TYPE_4__ matchState; } ;
struct TYPE_14__ {scalar_t__ strategy; size_t hashLog; size_t chainLog; } ;
struct TYPE_15__ {TYPE_1__ cParams; } ;
struct TYPE_21__ {TYPE_3__ blockState; int /*<<< orphan*/  dictID; int /*<<< orphan*/  workspace; TYPE_2__ appliedParams; } ;
typedef  TYPE_8__ ZSTD_CCtx ;
typedef  int /*<<< orphan*/  U64 ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ ZSTD_fast ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,TYPE_7__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTDcrp_leaveDirty ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static size_t FUNC8(ZSTD_CCtx* cctx,
                            const ZSTD_CDict* cdict,
                            ZSTD_CCtx_params params,
                            U64 pledgedSrcSize,
                            ZSTD_buffered_policy_e zbuff)
{
    const ZSTD_compressionParameters *cdict_cParams = &cdict->matchState.cParams;

    FUNC0(4, "copying dictionary into context");

    {   unsigned const windowLog = params.cParams.windowLog;
        FUNC5(windowLog != 0);
        /* Copy only compression parameters related to tables. */
        params.cParams = *cdict_cParams;
        params.cParams.windowLog = windowLog;
        FUNC1(FUNC4(cctx, params, pledgedSrcSize,
                                                 ZSTDcrp_leaveDirty, zbuff));
        FUNC5(cctx->appliedParams.cParams.strategy == cdict_cParams->strategy);
        FUNC5(cctx->appliedParams.cParams.hashLog == cdict_cParams->hashLog);
        FUNC5(cctx->appliedParams.cParams.chainLog == cdict_cParams->chainLog);
    }

    FUNC3(&cctx->workspace);

    /* copy tables */
    {   size_t const chainSize = (cdict_cParams->strategy == ZSTD_fast) ? 0 : ((size_t)1 << cdict_cParams->chainLog);
        size_t const hSize =  (size_t)1 << cdict_cParams->hashLog;

        FUNC6(cctx->blockState.matchState.hashTable,
               cdict->matchState.hashTable,
               hSize * sizeof(U32));
        FUNC6(cctx->blockState.matchState.chainTable,
               cdict->matchState.chainTable,
               chainSize * sizeof(U32));
    }

    /* Zero the hashTable3, since the cdict never fills it */
    {   int const h3log = cctx->blockState.matchState.hashLog3;
        size_t const h3Size = h3log ? ((size_t)1 << h3log) : 0;
        FUNC5(cdict->matchState.hashLog3 == 0);
        FUNC7(cctx->blockState.matchState.hashTable3, 0, h3Size * sizeof(U32));
    }

    FUNC2(&cctx->workspace);

    /* copy dictionary offsets */
    {   ZSTD_matchState_t const* srcMatchState = &cdict->matchState;
        ZSTD_matchState_t* dstMatchState = &cctx->blockState.matchState;
        dstMatchState->window       = srcMatchState->window;
        dstMatchState->nextToUpdate = srcMatchState->nextToUpdate;
        dstMatchState->loadedDictEnd= srcMatchState->loadedDictEnd;
    }

    cctx->dictID = cdict->dictID;

    /* copy block state */
    FUNC6(cctx->blockState.prevCBlock, &cdict->cBlockState, sizeof(cdict->cBlockState));

    return 0;
}