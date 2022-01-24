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
typedef  int /*<<< orphan*/  xo_xof_flags_t ;
typedef  int /*<<< orphan*/  xo_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  XO_STYLE_ENCODER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 

xo_handle_t *
FUNC3 (const char *name, xo_xof_flags_t flags)
{
    xo_handle_t *xop;

    xop = FUNC0(XO_STYLE_ENCODER, flags);
    if (xop) {
	if (FUNC2(xop, name)) {
	    FUNC1(xop);
	    xop = NULL;
	}
    }

    return xop;
}