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
struct TYPE_11__ {int xo_columns; int xo_anchor_columns; } ;
typedef  TYPE_1__ xo_handle_t ;
struct TYPE_12__ {int xb_bufp; int xb_curp; } ;
typedef  TYPE_2__ xo_buffer_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  XOF_COLUMNS ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOIF_ANCHOR ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_2__*,char const*,int) ; 
 int FUNC4 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const) ; 

__attribute__((used)) static void
FUNC6 (xo_handle_t *xop, xo_buffer_t *xbp,
		      const char *cp, ssize_t len)
{
    const char *sp = cp, *ep = cp + len;
    ssize_t save_off = xbp->xb_bufp - xbp->xb_curp;
    ssize_t slen;
    int cols = 0;

    for ( ; cp < ep; cp++) {
	if (!FUNC5(*cp)) {
	    cols += 1;
	    continue;
	}

	/*
	 * We're looking at a non-ascii UTF-8 character.
	 * First we copy the previous data.
	 * Then we need find the length and validate it.
	 * Then we turn it into a wide string.
	 * Then we turn it into a localized string.
	 * Then we repeat.  Isn't i18n fun?
	 */
	if (sp != cp)
	    FUNC2(xbp, sp, cp - sp); /* Append previous data */

	slen = FUNC4(xop, cp, ep - cp);
	if (slen <= 0) {
	    /* Bad data; back it all out */
	    xbp->xb_curp = xbp->xb_bufp + save_off;
	    return;
	}

	cols += FUNC3(xop, xbp, cp, slen);

	/* Next time through, we'll start at the next character */
	cp += slen - 1;
	sp = cp + 1;
    }

    /* Update column values */
    if (FUNC0(xop, XOF_COLUMNS))
	xop->xo_columns += cols;
    if (FUNC1(xop, XOIF_ANCHOR))
	xop->xo_anchor_columns += cols;

    /* Before we fall into the basic logic below, we need reset len */
    len = ep - sp;
    if (len != 0) /* Append trailing data */
	FUNC2(xbp, sp, len);
}