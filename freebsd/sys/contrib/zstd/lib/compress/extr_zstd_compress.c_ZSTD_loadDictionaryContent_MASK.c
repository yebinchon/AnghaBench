#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  const* const base; } ;
struct TYPE_14__ {TYPE_3__ window; void* nextToUpdate; int /*<<< orphan*/  cParams; void* loadedDictEnd; } ;
typedef  TYPE_1__ ZSTD_matchState_t ;
typedef  int /*<<< orphan*/  ZSTD_dictTableLoadMethod_e ;
typedef  int /*<<< orphan*/  ZSTD_cwksp ;
struct TYPE_13__ {int strategy; } ;
struct TYPE_15__ {TYPE_12__ cParams; scalar_t__ forceWindow; } ;
typedef  TYPE_2__ ZSTD_CCtx_params ;
typedef  void* U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t HASH_READ_SIZE ; 
 size_t FUNC0 (size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_CHUNKSIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__,int /*<<< orphan*/ ) ; 
#define  ZSTD_btlazy2 136 
#define  ZSTD_btopt 135 
#define  ZSTD_btultra 134 
#define  ZSTD_btultra2 133 
#define  ZSTD_dfast 132 
#define  ZSTD_fast 131 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const* const,int /*<<< orphan*/ ) ; 
#define  ZSTD_greedy 130 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const* const) ; 
#define  ZSTD_lazy 129 
#define  ZSTD_lazy2 128 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC9(ZSTD_matchState_t* ms,
                                         ZSTD_cwksp* ws,
                                         ZSTD_CCtx_params const* params,
                                         const void* src, size_t srcSize,
                                         ZSTD_dictTableLoadMethod_e dtlm)
{
    const BYTE* ip = (const BYTE*) src;
    const BYTE* const iend = ip + srcSize;

    FUNC7(&ms->window, src, srcSize);
    ms->loadedDictEnd = params->forceWindow ? 0 : (U32)(iend - ms->window.base);

    /* Assert that we the ms params match the params we're being given */
    FUNC1(params->cParams, ms->cParams);

    if (srcSize <= HASH_READ_SIZE) return 0;

    while (iend - ip > HASH_READ_SIZE) {
        size_t const remaining = (size_t)(iend - ip);
        size_t const chunk = FUNC0(remaining, ZSTD_CHUNKSIZE_MAX);
        const BYTE* const ichunk = ip + chunk;

        FUNC5(ms, ws, params, ip, ichunk);

        switch(params->cParams.strategy)
        {
        case ZSTD_fast:
            FUNC3(ms, ichunk, dtlm);
            break;
        case ZSTD_dfast:
            FUNC2(ms, ichunk, dtlm);
            break;

        case ZSTD_greedy:
        case ZSTD_lazy:
        case ZSTD_lazy2:
            if (chunk >= HASH_READ_SIZE)
                FUNC4(ms, ichunk-HASH_READ_SIZE);
            break;

        case ZSTD_btlazy2:   /* we want the dictionary table fully sorted */
        case ZSTD_btopt:
        case ZSTD_btultra:
        case ZSTD_btultra2:
            if (chunk >= HASH_READ_SIZE)
                FUNC6(ms, ichunk-HASH_READ_SIZE, ichunk);
            break;

        default:
            FUNC8(0);  /* not possible : not a valid strategy id */
        }

        ip = ichunk;
    }

    ms->nextToUpdate = (U32)(iend - ms->window.base);
    return 0;
}