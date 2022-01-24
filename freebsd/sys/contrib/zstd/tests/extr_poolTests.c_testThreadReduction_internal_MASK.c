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
struct TYPE_4__ {int countdown; int /*<<< orphan*/  mut; scalar_t__ max; scalar_t__ val; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ poolTest_t ;
typedef  int /*<<< orphan*/  POOL_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  waitLongFn ; 

__attribute__((used)) static int FUNC6(POOL_ctx* ctx, poolTest_t test)
{
    int const nbWaits = 16;

    test.countdown = nbWaits;
    test.val = 0;
    test.max = 0;

    {   int i;
        for (i=0; i<nbWaits; i++)
            FUNC1(ctx, &waitLongFn, &test);
    }
    FUNC4(&test.mut);
    while (test.countdown > 0)
        FUNC3(&test.cond, &test.mut);
    FUNC0(test.val, 0);
    FUNC0(test.max, 4);
    FUNC5(&test.mut);

    FUNC0( FUNC2(ctx, 2/*nbThreads*/) , 0 );
    test.countdown = nbWaits;
    test.val = 0;
    test.max = 0;
    {   int i;
        for (i=0; i<nbWaits; i++)
            FUNC1(ctx, &waitLongFn, &test);
    }
    FUNC4(&test.mut);
    while (test.countdown > 0)
        FUNC3(&test.cond, &test.mut);
    FUNC0(test.val, 0);
    FUNC0(test.max, 2);
    FUNC5(&test.mut);

    return 0;
}