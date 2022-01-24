#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ xo_depth; int xo_indent; scalar_t__ xo_style; } ;
typedef  TYPE_1__ xo_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOF_NO_TOP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOIF_TOP_EMITTED ; 
 scalar_t__ XO_STYLE_JSON ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 

void
FUNC4 (xo_handle_t *xop, int depth)
{
    xop = FUNC2(xop);

    if (FUNC3(xop, depth))
	return;

    xop->xo_depth += depth;
    xop->xo_indent += depth;

    /*
     * Handling the "top wrapper" for JSON is a bit of a pain.  Here
     * we need to detect that the depth has been changed to set the
     * "XOIF_TOP_EMITTED" flag correctly.
     */
    if (xop->xo_style == XO_STYLE_JSON
	&& !FUNC0(xop, XOF_NO_TOP) && xop->xo_depth > 0)
	FUNC1(xop, XOIF_TOP_EMITTED);
}