#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {char* xs_name; int xs_flags; } ;
typedef  TYPE_1__ xo_stack_t ;
struct TYPE_16__ {size_t xo_depth; TYPE_1__* xo_stack; } ;
typedef  TYPE_2__ xo_handle_t ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOF_PRETTY ; 
 char* XO_FAILURE_NAME ; 
 int /*<<< orphan*/  XO_OP_CLOSE_CONTAINER ; 
#define  XO_STYLE_ENCODER 133 
#define  XO_STYLE_HTML 132 
#define  XO_STYLE_JSON 131 
#define  XO_STYLE_SDPARAMS 130 
#define  XO_STYLE_TEXT 129 
#define  XO_STYLE_XML 128 
 int XSF_DTRT ; 
 int XSF_NOT_FIRST ; 
 int /*<<< orphan*/  XSS_CLOSE_CONTAINER ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*,char*,char const*,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*) ; 
 char* FUNC12 (TYPE_2__*,char const*) ; 

__attribute__((used)) static int
FUNC13 (xo_handle_t *xop, const char *name)
{
    xop = FUNC4(xop);

    ssize_t rc = 0;
    const char *ppn = FUNC0(xop, XOF_PRETTY) ? "\n" : "";
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
	    FUNC7(xop, "missing name without 'dtrt' mode");
	    name = XO_FAILURE_NAME;
	}
    }

    const char *leader = FUNC12(xop, name);

    switch (FUNC11(xop)) {
    case XO_STYLE_XML:
	FUNC5(xop, name, -1, -1, XSS_CLOSE_CONTAINER, 0);
	rc = FUNC9(xop, "%*s</%s%s>%s", FUNC8(xop), "", leader, name, ppn);
	break;

    case XO_STYLE_JSON:
	FUNC10(xop);

	pre_nl = FUNC0(xop, XOF_PRETTY) ? "\n" : "";
	ppn = "";

	FUNC5(xop, name, -1, -1, XSS_CLOSE_CONTAINER, 0);
	rc = FUNC9(xop, "%s%*s}%s", pre_nl, FUNC8(xop), "", ppn);
	xop->xo_stack[xop->xo_depth].xs_flags |= XSF_NOT_FIRST;
	break;

    case XO_STYLE_HTML:
    case XO_STYLE_TEXT:
	FUNC5(xop, name, -1, 0, XSS_CLOSE_CONTAINER, 0);
	break;

    case XO_STYLE_SDPARAMS:
	break;

    case XO_STYLE_ENCODER:
	FUNC5(xop, name, -1, 0, XSS_CLOSE_CONTAINER, 0);
	rc = FUNC6(xop, XO_OP_CLOSE_CONTAINER, name, NULL, 0);
	break;
    }

    return rc;
}