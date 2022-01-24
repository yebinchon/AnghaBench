#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ZSTD_resetTarget_e ;
typedef  int /*<<< orphan*/  ZSTD_optimal_t ;
typedef  int /*<<< orphan*/  ZSTD_match_t ;
struct TYPE_10__ {scalar_t__ strategy; size_t chainLog; size_t hashLog; int minMatch; int /*<<< orphan*/  windowLog; } ;
struct TYPE_8__ {unsigned int* litFreq; unsigned int* litLengthFreq; unsigned int* matchLengthFreq; unsigned int* offCodeFreq; int /*<<< orphan*/ * priceTable; int /*<<< orphan*/ * matchTable; } ;
struct TYPE_11__ {int dictLimit; int lowLimit; scalar_t__ base; scalar_t__ nextSrc; } ;
struct TYPE_9__ {int hashLog3; int* hashTable; int* chainTable; int* hashTable3; TYPE_3__ cParams; TYPE_1__ opt; TYPE_4__ window; } ;
typedef  TYPE_2__ ZSTD_matchState_t ;
typedef  scalar_t__ ZSTD_indexResetPolicy_e ;
typedef  int /*<<< orphan*/  ZSTD_cwksp ;
typedef  TYPE_3__ ZSTD_compressionParameters ;
typedef  scalar_t__ ZSTD_compResetPolicy_e ;
typedef  int U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int Litbits ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MaxLL ; 
 int MaxML ; 
 int MaxOff ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ZSTD_HASHLOG3_MAX ; 
 int ZSTD_OPT_NUM ; 
 scalar_t__ ZSTD_btopt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,size_t const) ; 
 scalar_t__ ZSTD_fast ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ const ZSTD_resetTarget_CCtx ; 
 scalar_t__ const ZSTDcrp_leaveDirty ; 
 scalar_t__ const ZSTDirp_reset ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  memory_allocation ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static size_t
FUNC12(ZSTD_matchState_t* ms,
                      ZSTD_cwksp* ws,
                const ZSTD_compressionParameters* cParams,
                const ZSTD_compResetPolicy_e crp,
                const ZSTD_indexResetPolicy_e forceResetIndex,
                const ZSTD_resetTarget_e forWho)
{
    size_t const chainSize = (cParams->strategy == ZSTD_fast) ? 0 : ((size_t)1 << cParams->chainLog);
    size_t const hSize = ((size_t)1) << cParams->hashLog;
    U32    const hashLog3 = ((forWho == ZSTD_resetTarget_CCtx) && cParams->minMatch==3) ? FUNC1(ZSTD_HASHLOG3_MAX, cParams->windowLog) : 0;
    size_t const h3Size = hashLog3 ? ((size_t)1) << hashLog3 : 0;

    FUNC0(4, "reset indices : %u", forceResetIndex == ZSTDirp_reset);
    if (forceResetIndex == ZSTDirp_reset) {
        FUNC11(&ms->window, 0, sizeof(ms->window));
        ms->window.dictLimit = 1;    /* start from 1, so that 1st position is valid */
        ms->window.lowLimit = 1;     /* it ensures first and later CCtx usages compress the same */
        ms->window.nextSrc = ms->window.base + 1;   /* see issue #1241 */
        FUNC5(ws);
    }

    ms->hashLog3 = hashLog3;

    FUNC9(ms);

    FUNC10(!FUNC7(ws)); /* check that allocation hasn't already failed */

    FUNC4(ws);

    FUNC0(5, "reserving table space");
    /* table Space */
    ms->hashTable = (U32*)FUNC8(ws, hSize * sizeof(U32));
    ms->chainTable = (U32*)FUNC8(ws, chainSize * sizeof(U32));
    ms->hashTable3 = (U32*)FUNC8(ws, h3Size * sizeof(U32));
    FUNC2(FUNC7(ws), memory_allocation,
                    "failed a workspace allocation in ZSTD_reset_matchState");

    FUNC0(4, "reset table : %u", crp!=ZSTDcrp_leaveDirty);
    if (crp!=ZSTDcrp_leaveDirty) {
        /* reset tables only */
        FUNC3(ws);
    }

    /* opt parser space */
    if ((forWho == ZSTD_resetTarget_CCtx) && (cParams->strategy >= ZSTD_btopt)) {
        FUNC0(4, "reserving optimal parser space");
        ms->opt.litFreq = (unsigned*)FUNC6(ws, (1<<Litbits) * sizeof(unsigned));
        ms->opt.litLengthFreq = (unsigned*)FUNC6(ws, (MaxLL+1) * sizeof(unsigned));
        ms->opt.matchLengthFreq = (unsigned*)FUNC6(ws, (MaxML+1) * sizeof(unsigned));
        ms->opt.offCodeFreq = (unsigned*)FUNC6(ws, (MaxOff+1) * sizeof(unsigned));
        ms->opt.matchTable = (ZSTD_match_t*)FUNC6(ws, (ZSTD_OPT_NUM+1) * sizeof(ZSTD_match_t));
        ms->opt.priceTable = (ZSTD_optimal_t*)FUNC6(ws, (ZSTD_OPT_NUM+1) * sizeof(ZSTD_optimal_t));
    }

    ms->cParams = *cParams;

    FUNC2(FUNC7(ws), memory_allocation,
                    "failed a workspace allocation in ZSTD_reset_matchState");

    return 0;
}