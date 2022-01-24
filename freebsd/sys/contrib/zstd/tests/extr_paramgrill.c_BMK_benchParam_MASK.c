#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  paramValues_t ;
typedef  int /*<<< orphan*/  contexts_t ;
typedef  int /*<<< orphan*/  buffers_t ;
typedef  int /*<<< orphan*/  BMK_benchResult_t ;
typedef  int /*<<< orphan*/  BMK_benchOutcome_t ;

/* Variables and functions */
 int /*<<< orphan*/  BASE_CLEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BMK_both ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC3 ( BMK_benchResult_t* resultPtr,
                            buffers_t buf, contexts_t ctx,
                            paramValues_t cParams)
{
    BMK_benchOutcome_t const outcome = FUNC0(buf, ctx,
                                                        BASE_CLEVEL, &cParams,
                                                        BMK_both, 3);
    if (!FUNC2(outcome)) return 1;
    *resultPtr = FUNC1(outcome);
    return 0;
}