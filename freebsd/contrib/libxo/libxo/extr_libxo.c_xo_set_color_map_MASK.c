#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* xo_color_map_fg; int* xo_color_map_bg; } ;
typedef  TYPE_1__ xo_handle_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOF_COLOR_MAP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int XO_NUM_COLORS ; 
 char* FUNC2 (char*,char) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static void
FUNC6 (xo_handle_t *xop, char *value)
{
    if (FUNC5())
	return;

    char *cp, *ep, *vp, *np;
    ssize_t len = value ? FUNC3(value) + 1 : 0;
    int num = 1, fg, bg;

    for (cp = value, ep = cp + len - 1; cp && *cp && cp < ep; cp = np) {
	np = FUNC2(cp, '+');
	if (np)
	    *np++ = '\0';

	vp = FUNC2(cp, '/');
	if (vp)
	    *vp++ = '\0';

	fg = *cp ? FUNC4(cp) : -1;
	bg = (vp && *vp) ? FUNC4(vp) : -1;

#ifndef LIBXO_TEXT_ONLY
	xop->xo_color_map_fg[num] = (fg < 0) ? num : fg;
	xop->xo_color_map_bg[num] = (bg < 0) ? num : bg;
#endif /* LIBXO_TEXT_ONLY */

	if (++num > XO_NUM_COLORS)
	    break;
    }

    /* If no color initialization happened, then we don't need the map */
    if (num > 1)
	FUNC1(xop, XOF_COLOR_MAP);
    else
	FUNC0(xop, XOF_COLOR_MAP);

#ifndef LIBXO_TEXT_ONLY
    /* Fill in the rest of the colors with the defaults */
    for ( ; num < XO_NUM_COLORS; num++)
	xop->xo_color_map_fg[num] = xop->xo_color_map_bg[num] = num;
#endif /* LIBXO_TEXT_ONLY */
}