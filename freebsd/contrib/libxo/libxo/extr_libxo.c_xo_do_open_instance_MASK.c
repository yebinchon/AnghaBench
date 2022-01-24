#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xo_xof_flags_t ;
struct TYPE_17__ {int xb_curp; int xb_bufp; } ;
struct TYPE_19__ {size_t xo_depth; TYPE_2__* xo_stack; TYPE_1__ xo_attrs; int /*<<< orphan*/  xo_flags; } ;
typedef  TYPE_3__ xo_handle_t ;
typedef  int ssize_t ;
struct TYPE_18__ {int xs_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOF_PRETTY ; 
 char* XO_FAILURE_NAME ; 
 int /*<<< orphan*/  XO_OP_OPEN_INSTANCE ; 
#define  XO_STYLE_ENCODER 131 
#define  XO_STYLE_JSON 130 
#define  XO_STYLE_SDPARAMS 129 
#define  XO_STYLE_XML 128 
 int XSF_NOT_FIRST ; 
 int /*<<< orphan*/  XSS_OPEN_INSTANCE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int) ; 
 TYPE_3__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 char* FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*) ; 
 char* FUNC11 (TYPE_3__*,char const*) ; 

__attribute__((used)) static int
FUNC12 (xo_handle_t *xop, xo_xof_flags_t flags, const char *name)
{
    xop = FUNC2(xop);

    ssize_t rc = 0;
    const char *ppn = FUNC0(xop, XOF_PRETTY) ? "\n" : "";
    const char *pre_nl = "";

    if (name == NULL) {
	FUNC5(xop, "NULL passed for instance name");
	name = XO_FAILURE_NAME;
    }

    const char *leader = FUNC11(xop, name);
    flags |= xop->xo_flags;

    switch (FUNC10(xop)) {
    case XO_STYLE_XML:
	rc = FUNC7(xop, "%*s<%s%s", FUNC6(xop), "", leader, name);

	if (xop->xo_attrs.xb_curp != xop->xo_attrs.xb_bufp) {
	    rc += xop->xo_attrs.xb_curp - xop->xo_attrs.xb_bufp;
	    FUNC1(xop, xop->xo_attrs.xb_bufp,
			   xop->xo_attrs.xb_curp - xop->xo_attrs.xb_bufp);
	    xop->xo_attrs.xb_curp = xop->xo_attrs.xb_bufp;
	}

	rc += FUNC7(xop, ">%s", ppn);
	break;

    case XO_STYLE_JSON:
	FUNC9(xop);

	if (xop->xo_stack[xop->xo_depth].xs_flags & XSF_NOT_FIRST)
	    pre_nl = FUNC0(xop, XOF_PRETTY) ? ",\n" : ", ";
	xop->xo_stack[xop->xo_depth].xs_flags |= XSF_NOT_FIRST;

	rc = FUNC7(xop, "%s%*s{%s",
		       pre_nl, FUNC6(xop), "", ppn);
	break;

    case XO_STYLE_SDPARAMS:
	break;

    case XO_STYLE_ENCODER:
	rc = FUNC4(xop, XO_OP_OPEN_INSTANCE, name, NULL, flags);
	break;
    }

    FUNC3(xop, name, 1, 1, XSS_OPEN_INSTANCE, FUNC8(flags));

    return rc;
}