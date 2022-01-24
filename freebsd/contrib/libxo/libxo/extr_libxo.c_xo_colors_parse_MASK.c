#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xo_handle_t ;
struct TYPE_3__ {int xoc_col_fg; int xoc_col_bg; int xoc_effects; } ;
typedef  TYPE_1__ xo_colors_t ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOF_WARN ; 
 int const XO_EFF_BOLD ; 
 int const XO_EFF_INVERSE ; 
#define  XO_EFF_NORMAL 129 
#define  XO_EFF_RESET 128 
 int const XO_EFF_UNDERLINE ; 
 scalar_t__ FUNC1 (char) ; 
 char* FUNC2 (char*,char) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static void
FUNC8 (xo_handle_t *xop, xo_colors_t *xocp, char *str)
{
    if (FUNC7())
	return;

    char *cp, *ep, *np, *xp;
    ssize_t len = FUNC3(str);
    int rc;

    /*
     * Possible tokens: colors, bg-colors, effects, no-effects, "reset".
     */
    for (cp = str, ep = cp + len - 1; cp && cp < ep; cp = np) {
	/* Trim leading whitespace */
	while (FUNC1((int) *cp))
	    cp += 1;

	np = FUNC2(cp, ',');
	if (np)
	    *np++ = '\0';

	/* Trim trailing whitespace */
	xp = cp + FUNC3(cp) - 1;
	while (FUNC1(*xp) && xp > cp)
	    *xp-- = '\0';

	if (cp[0] == 'f' && cp[1] == 'g' && cp[2] == '-') {
	    rc = FUNC4(cp + 3);
	    if (rc < 0)
		goto unknown;

	    xocp->xoc_col_fg = rc;

	} else if (cp[0] == 'b' && cp[1] == 'g' && cp[2] == '-') {
	    rc = FUNC4(cp + 3);
	    if (rc < 0)
		goto unknown;
	    xocp->xoc_col_bg = rc;

	} else if (cp[0] == 'n' && cp[1] == 'o' && cp[2] == '-') {
	    rc = FUNC5(cp + 3);
	    if (rc < 0)
		goto unknown;
	    xocp->xoc_effects &= ~(1 << rc);

	} else {
	    rc = FUNC5(cp);
	    if (rc < 0)
		goto unknown;
	    xocp->xoc_effects |= 1 << rc;

	    switch (1 << rc) {
	    case XO_EFF_RESET:
		xocp->xoc_col_fg = xocp->xoc_col_bg = 0;
		/* Note: not "|=" since we want to wipe out the old value */
		xocp->xoc_effects = XO_EFF_RESET;
		break;

	    case XO_EFF_NORMAL:
		xocp->xoc_effects &= ~(XO_EFF_BOLD | XO_EFF_UNDERLINE
				      | XO_EFF_INVERSE | XO_EFF_NORMAL);
		break;
	    }
	}
	continue;

    unknown:
	if (FUNC0(xop, XOF_WARN))
	    FUNC6(xop, "unknown color/effect string detected: '%s'", cp);
    }
}