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
typedef  int /*<<< orphan*/  test ;
struct TYPE_4__ {int /*<<< orphan*/  cond; int /*<<< orphan*/  mut; } ;
typedef  TYPE_1__ poolTest_t ;
typedef  int /*<<< orphan*/  POOL_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ * const,TYPE_1__) ; 

__attribute__((used)) static int FUNC10(void) {
    int result;
    poolTest_t test;
    POOL_ctx* const ctx = FUNC2(4 /*nbThreads*/, 2 /*queueSize*/);

    FUNC1(ctx);

    FUNC8(&test, 0, sizeof(test));
    FUNC0( FUNC7(&test.mut, NULL) );
    FUNC0( FUNC5(&test.cond, NULL) );

    result = FUNC9(ctx, test);

    FUNC6(&test.mut);
    FUNC4(&test.cond);
    FUNC3(ctx);

    return result;
}