#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xo_xof_flags_t ;
struct TYPE_17__ {size_t xo_depth; TYPE_1__* xo_stack; } ;
typedef  TYPE_2__ xo_handle_t ;
typedef  int ssize_t ;
struct TYPE_16__ {int xs_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOF_NO_TOP ; 
 int /*<<< orphan*/  XOF_PRETTY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOIF_TOP_EMITTED ; 
 char* XO_FAILURE_NAME ; 
 int /*<<< orphan*/  XO_OP_OPEN_LEAF_LIST ; 
#define  XO_STYLE_ENCODER 129 
#define  XO_STYLE_JSON 128 
 int XSF_LIST ; 
 int XSF_NOT_FIRST ; 
 int /*<<< orphan*/  XSS_OPEN_LEAF_LIST ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*,char*,char const*,char*,char const*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC12 (xo_handle_t *xop, xo_xof_flags_t flags, const char *name)
{
    ssize_t rc = 0;
    int indent = 0;

    xop = FUNC3(xop);

    const char *ppn = FUNC0(xop, XOF_PRETTY) ? "\n" : "";
    const char *pre_nl = "";

    switch (FUNC11(xop)) {
    case XO_STYLE_JSON:
	indent = 1;

	if (!FUNC0(xop, XOF_NO_TOP)) {
	    if (!FUNC1(xop, XOIF_TOP_EMITTED)) {
		FUNC8(xop, "%*s{%s", FUNC7(xop), "", ppn);
		FUNC2(xop, XOIF_TOP_EMITTED);
	    }
	}

	if (name == NULL) {
	    FUNC6(xop, "NULL passed for list name");
	    name = XO_FAILURE_NAME;
	}

	FUNC10(xop);

	if (xop->xo_stack[xop->xo_depth].xs_flags & XSF_NOT_FIRST)
	    pre_nl = FUNC0(xop, XOF_PRETTY) ? ",\n" : ", ";
	xop->xo_stack[xop->xo_depth].xs_flags |= XSF_NOT_FIRST;

	rc = FUNC8(xop, "%s%*s\"%s\": [%s",
		       pre_nl, FUNC7(xop), "", name, ppn);
	break;

    case XO_STYLE_ENCODER:
	rc = FUNC5(xop, XO_OP_OPEN_LEAF_LIST, name, NULL, flags);
	break;
    }

    FUNC4(xop, name, 1, indent, XSS_OPEN_LEAF_LIST,
		    XSF_LIST | FUNC9(flags));

    return rc;
}