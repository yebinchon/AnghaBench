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
typedef  int /*<<< orphan*/  xo_stack_t ;
struct TYPE_4__ {int xo_stack_size; int /*<<< orphan*/ * xo_stack; } ;
typedef  TYPE_1__ xo_handle_t ;

/* Variables and functions */
 scalar_t__ XO_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3 (xo_handle_t *xop, int depth)
{
    xo_stack_t *xsp;

    if (depth >= xop->xo_stack_size) {
	depth += XO_DEPTH;	/* Extra room */

	xsp = FUNC2(xop->xo_stack, sizeof(xop->xo_stack[0]) * depth);
	if (xsp == NULL) {
	    FUNC1(xop, "xo_depth_check: out of memory (%d)", depth);
	    return -1;
	}

	int count = depth - xop->xo_stack_size;

	FUNC0(xsp + xop->xo_stack_size, count * sizeof(*xsp));
	xop->xo_stack_size = depth;
	xop->xo_stack = xsp;
    }

    return 0;
}