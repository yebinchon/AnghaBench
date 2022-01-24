#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xo_state_t ;
struct TYPE_7__ {scalar_t__ xs_state; scalar_t__ xs_name; } ;
typedef  TYPE_1__ xo_stack_t ;
struct TYPE_8__ {size_t xo_depth; TYPE_1__* xo_stack; } ;
typedef  TYPE_2__ xo_handle_t ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ XSS_CLOSE_CONTAINER ; 
 scalar_t__ XSS_CLOSE_INSTANCE ; 
 scalar_t__ XSS_CLOSE_LEAF_LIST ; 
 scalar_t__ XSS_CLOSE_LIST ; 
 scalar_t__ XSS_MARKER ; 
 scalar_t__ XSS_OPEN_CONTAINER ; 
 scalar_t__ XSS_OPEN_INSTANCE ; 
 scalar_t__ XSS_OPEN_LEAF_LIST ; 
 scalar_t__ XSS_OPEN_LIST ; 
 int FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char const*,scalar_t__) ; 

__attribute__((used)) static int
FUNC4 (xo_handle_t *xop, const char *name, xo_state_t new_state)
{
    xo_stack_t *xsp, *limit = NULL;
    ssize_t rc;
    xo_state_t need_state = new_state;

    if (new_state == XSS_CLOSE_CONTAINER)
	need_state = XSS_OPEN_CONTAINER;
    else if (new_state == XSS_CLOSE_LIST)
	need_state = XSS_OPEN_LIST;
    else if (new_state == XSS_CLOSE_INSTANCE)
	need_state = XSS_OPEN_INSTANCE;
    else if (new_state == XSS_CLOSE_LEAF_LIST)
	need_state = XSS_OPEN_LEAF_LIST;
    else if (new_state == XSS_MARKER)
	need_state = XSS_MARKER;
    else
	return 0; /* Unknown or useless new states are ignored */

    for (xsp = &xop->xo_stack[xop->xo_depth]; xsp > xop->xo_stack; xsp--) {
	/*
	 * Marker's normally stop us from going any further, unless
	 * we are popping a marker (new_state == XSS_MARKER).
	 */
	if (xsp->xs_state == XSS_MARKER && need_state != XSS_MARKER) {
	    if (name) {
		FUNC1(xop, "close (xo_%s) fails at marker '%s'; "
			   "not found '%s'",
			   FUNC2(new_state),
			   xsp->xs_name, name);
		return 0;

	    } else {
		limit = xsp;
		FUNC1(xop, "close stops at marker '%s'", xsp->xs_name);
	    }
	    break;
	}
	
	if (xsp->xs_state != need_state)
	    continue;

	if (name && xsp->xs_name && !FUNC3(name, xsp->xs_name))
	    continue;

	limit = xsp;
	break;
    }

    if (limit == NULL) {
	FUNC1(xop, "xo_%s can't find match for '%s'",
		   FUNC2(new_state), name);
	return 0;
    }

    rc = FUNC0(xop, limit);

    return rc;
}