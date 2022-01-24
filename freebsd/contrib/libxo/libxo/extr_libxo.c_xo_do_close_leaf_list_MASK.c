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
struct TYPE_11__ {char* xs_name; int xs_flags; } ;
typedef  TYPE_1__ xo_stack_t ;
struct TYPE_12__ {size_t xo_depth; TYPE_1__* xo_stack; } ;
typedef  TYPE_2__ xo_handle_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOF_PRETTY ; 
 char* XO_FAILURE_NAME ; 
 int /*<<< orphan*/  XO_OP_CLOSE_LEAF_LIST ; 
#define  XO_STYLE_ENCODER 129 
#define  XO_STYLE_JSON 128 
 int XSF_DTRT ; 
 int /*<<< orphan*/  XSF_LIST ; 
 int XSF_NOT_FIRST ; 
 int /*<<< orphan*/  XSS_CLOSE_LEAF_LIST ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*,char*,char const*,int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC10 (xo_handle_t *xop, const char *name)
{
    ssize_t rc = 0;
    const char *pre_nl = "";

    if (name == NULL) {
	xo_stack_t *xsp = &xop->xo_stack[xop->xo_depth];

	name = xsp->xs_name;
	if (name) {
	    ssize_t len = FUNC3(name) + 1;
	    /* We need to make a local copy; xo_depth_change will free it */
	    char *cp = FUNC1(len);
	    FUNC2(cp, name, len);
	    name = cp;
	} else if (!(xsp->xs_flags & XSF_DTRT)) {
	    FUNC6(xop, "missing name without 'dtrt' mode");
	    name = XO_FAILURE_NAME;
	}
    }

    switch (FUNC9(xop)) {
    case XO_STYLE_JSON:
	if (xop->xo_stack[xop->xo_depth].xs_flags & XSF_NOT_FIRST)
	    pre_nl = FUNC0(xop, XOF_PRETTY) ? "\n" : "";
	xop->xo_stack[xop->xo_depth].xs_flags |= XSF_NOT_FIRST;

	FUNC4(xop, name, -1, -1, XSS_CLOSE_LEAF_LIST, XSF_LIST);
	rc = FUNC8(xop, "%s%*s]", pre_nl, FUNC7(xop), "");
	xop->xo_stack[xop->xo_depth].xs_flags |= XSF_NOT_FIRST;
	break;

    case XO_STYLE_ENCODER:
	rc = FUNC5(xop, XO_OP_CLOSE_LEAF_LIST, name, NULL, 0);
	/* FALLTHRU */

    default:
	FUNC4(xop, name, -1, 0, XSS_CLOSE_LEAF_LIST, XSF_LIST);
	xop->xo_stack[xop->xo_depth].xs_flags |= XSF_NOT_FIRST;
	break;
    }

    return rc;
}