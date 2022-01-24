#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xo_ssize_t ;
struct TYPE_14__ {int /*<<< orphan*/  xo_stack; } ;
typedef  TYPE_1__ xo_handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOF_NO_CLOSE ; 
 int /*<<< orphan*/  XOF_NO_TOP ; 
 int /*<<< orphan*/  XOF_PRETTY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOIF_MADE_OUTPUT ; 
 int /*<<< orphan*/  XOIF_TOP_EMITTED ; 
 int /*<<< orphan*/  XO_OP_FINISH ; 
#define  XO_STYLE_ENCODER 129 
#define  XO_STYLE_JSON 128 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char const*,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC9 (TYPE_1__*) ; 

xo_ssize_t
FUNC10 (xo_handle_t *xop)
{
    const char *open_if_empty = "";
    xop = FUNC3(xop);

    if (!FUNC0(xop, XOF_NO_CLOSE))
	FUNC4(xop, xop->xo_stack);

    switch (FUNC9(xop)) {
    case XO_STYLE_JSON:
	if (!FUNC0(xop, XOF_NO_TOP)) {
	    const char *pre_nl = FUNC0(xop, XOF_PRETTY) ? "\n" : "";

	    if (FUNC2(xop, XOIF_TOP_EMITTED))
		FUNC1(xop, XOIF_TOP_EMITTED); /* Turn off before output */
	    else if (!FUNC2(xop, XOIF_MADE_OUTPUT)) {
		open_if_empty = "{ ";
		pre_nl = "";
	    }

	    FUNC8(xop, "%s%*s%s}\n",
		      pre_nl, FUNC7(xop), "", open_if_empty);
	}
	break;

    case XO_STYLE_ENCODER:
	FUNC5(xop, XO_OP_FINISH, NULL, NULL, 0);
	break;
    }

    return FUNC6(xop);
}