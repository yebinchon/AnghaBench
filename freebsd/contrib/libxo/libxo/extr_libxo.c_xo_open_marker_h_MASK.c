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
typedef  int /*<<< orphan*/  xo_ssize_t ;
struct TYPE_8__ {size_t xo_depth; TYPE_1__* xo_stack; } ;
typedef  TYPE_2__ xo_handle_t ;
struct TYPE_7__ {int xs_flags; } ;

/* Variables and functions */
 int XSF_MARKER_FLAGS ; 
 int /*<<< orphan*/  XSS_MARKER ; 
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

xo_ssize_t
FUNC2 (xo_handle_t *xop, const char *name)
{
    xop = FUNC0(xop);

    FUNC1(xop, name, 1, 0, XSS_MARKER,
		    xop->xo_stack[xop->xo_depth].xs_flags & XSF_MARKER_FLAGS);

    return 0;
}