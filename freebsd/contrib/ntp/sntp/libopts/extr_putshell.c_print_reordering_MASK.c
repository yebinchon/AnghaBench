#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int curOptIdx; unsigned int origArgCt; int /*<<< orphan*/ * origArgVect; } ;
typedef  TYPE_1__ tOptions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_optct ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_dash ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC3(tOptions * opts)
{
    unsigned int ix;

    FUNC1(set_dash, stdout);

    for (ix = opts->curOptIdx;
         ix < opts->origArgCt;
         ix++) {
        FUNC0(' ', stdout);
        FUNC2(opts->origArgVect[ ix ]);
    }
    FUNC1(init_optct, stdout);
}