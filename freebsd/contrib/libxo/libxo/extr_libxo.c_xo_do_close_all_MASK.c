#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int xo_xsf_flags_t ;
struct TYPE_11__ {int xs_state; int xs_flags; int /*<<< orphan*/  xs_name; } ;
typedef  TYPE_1__ xo_stack_t ;
struct TYPE_12__ {size_t xo_depth; TYPE_1__* xo_stack; } ;
typedef  TYPE_2__ xo_handle_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int XSF_MARKER_FLAGS ; 
#define  XSS_INIT 133 
#define  XSS_MARKER 132 
#define  XSS_OPEN_CONTAINER 131 
#define  XSS_OPEN_INSTANCE 130 
#define  XSS_OPEN_LEAF_LIST 129 
#define  XSS_OPEN_LIST 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC6 (xo_handle_t *xop, xo_stack_t *limit)
{
    xo_stack_t *xsp;
    ssize_t rc = 0;
    xo_xsf_flags_t flags;

    for (xsp = &xop->xo_stack[xop->xo_depth]; xsp >= limit; xsp--) {
	switch (xsp->xs_state) {
	case XSS_INIT:
	    /* Nothing */
	    rc = 0;
	    break;

	case XSS_OPEN_CONTAINER:
	    rc = FUNC1(xop, NULL);
	    break;

	case XSS_OPEN_LIST:
	    rc = FUNC4(xop, NULL);
	    break;

	case XSS_OPEN_INSTANCE:
	    rc = FUNC2(xop, NULL);
	    break;

	case XSS_OPEN_LEAF_LIST:
	    rc = FUNC3(xop, NULL);
	    break;

	case XSS_MARKER:
	    flags = xsp->xs_flags & XSF_MARKER_FLAGS;
	    FUNC0(xop, xsp->xs_name, -1, 0, XSS_MARKER, 0);
	    xop->xo_stack[xop->xo_depth].xs_flags |= flags;
	    rc = 0;
	    break;
	}

	if (rc < 0)
	    FUNC5(xop, "close %d failed: %d", xsp->xs_state, rc);
    }

    return 0;
}