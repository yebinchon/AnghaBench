#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winners ;
typedef  int /*<<< orphan*/  winnerInfo_t ;
typedef  void* paramValues_t ;
struct TYPE_13__ {int /*<<< orphan*/  dictSize; } ;
typedef  TYPE_1__ contexts_t ;
struct TYPE_14__ {int /*<<< orphan*/  srcSize; int /*<<< orphan*/  maxBlockSize; } ;
typedef  TYPE_2__ buffers_t ;
typedef  int /*<<< orphan*/  UTIL_time_t ;
struct TYPE_15__ {int cSpeed; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_3__ BMK_benchResult_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__ const,TYPE_1__ const,void* const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,TYPE_2__ const,TYPE_1__ const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,TYPE_2__ const,TYPE_1__ const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int MB_UNIT ; 
 int /*<<< orphan*/  NB_LEVELS_TRACKED ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC14 (char const* const,char*) ; 
 scalar_t__ g_noSeed ; 
 scalar_t__ g_singleRun ; 
 int g_target ; 
 scalar_t__ g_timeLimit_s ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC16(const buffers_t buf, const contexts_t ctx)
{
    paramValues_t params;
    winnerInfo_t winners[NB_LEVELS_TRACKED+1];
    const char* const rfName = "grillResults.txt";
    FILE* const f = FUNC14(rfName, "w");

    /* init */
    FUNC10(g_singleRun==0);
    FUNC15(winners, 0, sizeof(winners));
    if (f==NULL) { FUNC6("error opening %s \n", rfName); FUNC12(1); }

    if (g_target) {
        FUNC1(g_target * MB_UNIT);
    } else {
        /* baseline config for level 1 */
        paramValues_t const l1params = FUNC11(FUNC8(1, buf.maxBlockSize, ctx.dictSize));
        BMK_benchResult_t testResult;
        FUNC0(&testResult, buf, ctx, l1params);
        FUNC1((int)((testResult.cSpeed * 31) / 32));
    }

    /* populate initial solution */
    {   const int maxSeeds = g_noSeed ? 1 : FUNC9();
        int i;
        for (i=0; i<=maxSeeds; i++) {
            params = FUNC11(FUNC8(i, buf.maxBlockSize, 0));
            FUNC3(winners, params, buf, ctx);
    }   }
    FUNC2(f, winners, buf.srcSize);

    /* start tests */
    {   const UTIL_time_t grillStart = FUNC7();
        do {
            FUNC4(f, winners, buf, ctx);
        } while (FUNC5(grillStart) < g_timeLimit_s);
    }

    /* end summary */
    FUNC2(f, winners, buf.srcSize);
    FUNC6("grillParams operations completed \n");

    /* clean up*/
    FUNC13(f);
}