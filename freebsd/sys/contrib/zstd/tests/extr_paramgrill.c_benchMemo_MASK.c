#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  paramValues_t ;
typedef  int /*<<< orphan*/  memoTable_t ;
typedef  int /*<<< orphan*/  contexts_t ;
typedef  int /*<<< orphan*/  constraint_t ;
struct TYPE_4__ {int /*<<< orphan*/  srcSize; int /*<<< orphan*/  maxBlockSize; } ;
typedef  TYPE_1__ buffers_t ;
typedef  int /*<<< orphan*/  BMK_benchResult_t ;

/* Variables and functions */
 int BETTER_RESULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CUSTOM_LEVEL ; 
 scalar_t__ DEBUG ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ INFEASIBLE_THRESHOLD ; 
 int WORSE_RESULT ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__ const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC6(BMK_benchResult_t* resultPtr,
                const buffers_t buf, const contexts_t ctx,
                const paramValues_t cParams,
                const constraint_t target,
                BMK_benchResult_t* winnerResult, memoTable_t* const memoTableArray,
                const int feas) {
    static int bmcount = 0;
    int res;

    if ( FUNC3(memoTableArray, cParams) >= INFEASIBLE_THRESHOLD
      || FUNC5(cParams, target, buf.maxBlockSize) ) {
        return WORSE_RESULT;
    }

    res = FUNC2(resultPtr, buf, ctx, cParams, target, winnerResult, feas);

    if(DEBUG && !(bmcount % 250)) {
        FUNC1("Count: %d\n", bmcount);
        bmcount++;
    }
    FUNC0(stdout, CUSTOM_LEVEL, *resultPtr, cParams, target, buf.srcSize);

    if(res == BETTER_RESULT || feas) {
        FUNC4(memoTableArray, cParams, 255); /* what happens if collisions are frequent */
    }
    return res;
}