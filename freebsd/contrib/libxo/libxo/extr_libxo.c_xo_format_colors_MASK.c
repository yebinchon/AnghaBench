#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int /*<<< orphan*/  xoc_effects; } ;
struct TYPE_23__ {TYPE_3__ xo_colors; } ;
typedef  TYPE_1__ xo_handle_t ;
struct TYPE_24__ {char* xfi_format; int xfi_flen; } ;
typedef  TYPE_2__ xo_field_info_t ;
typedef  TYPE_3__ xo_colors_t ;
struct TYPE_26__ {int /*<<< orphan*/  xb_bufp; } ;
typedef  TYPE_4__ xo_buffer_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  XO_EFF_RESET ; 
#define  XO_STYLE_ENCODER 133 
#define  XO_STYLE_HTML 132 
#define  XO_STYLE_JSON 131 
#define  XO_STYLE_SDPARAMS 130 
#define  XO_STYLE_TEXT 129 
#define  XO_STYLE_XML 128 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_4__*,char const*,int,int /*<<< orphan*/ ) ; 
 int const FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC11 (xo_handle_t *xop, xo_field_info_t *xfip,
		  const char *value, ssize_t vlen)
{
    const char *fmt = xfip->xfi_format;
    ssize_t flen = xfip->xfi_flen;

    xo_buffer_t xb;

    /* If the string is static and we've in an encoding style, bail */
    if (vlen != 0 && FUNC10(xop))
	return;

    FUNC2(&xb);

    if (vlen)
	FUNC0(&xb, value, vlen);
    else if (flen)
	FUNC8(xop, &xb, fmt, flen, 0);
    else
	FUNC0(&xb, "reset", 6); /* Default if empty */

    if (FUNC3(xop)) {
	switch (FUNC9(xop)) {
	case XO_STYLE_TEXT:
	case XO_STYLE_HTML:
	    FUNC0(&xb, "", 1);

	    xo_colors_t xoc = xop->xo_colors;
	    FUNC6(xop, &xoc, xb.xb_bufp);
	    FUNC7(xop, &xoc);

	    if (FUNC9(xop) == XO_STYLE_TEXT) {
		/*
		 * Text mode means emitting the colors as ANSI character
		 * codes.  This will allow people who like colors to have
		 * colors.  The issue is, of course conflicting with the
		 * user's perfectly reasonable color scheme.  Which leads
		 * to the hell of LSCOLORS, where even app need to have
		 * customization hooks for adjusting colors.  Instead we
		 * provide a simpler-but-still-annoying answer where one
		 * can map colors to other colors.
		 */
		FUNC5(xop, &xoc);
		xoc.xoc_effects &= ~XO_EFF_RESET; /* After handling it */

	    } else {
		/*
		 * HTML output is wrapped in divs, so the color information
		 * must appear in every div until cleared.  Most pathetic.
		 * Most unavoidable.
		 */
		xoc.xoc_effects &= ~XO_EFF_RESET; /* Before handling effects */
		FUNC4(xop, &xoc);
	    }

	    xop->xo_colors = xoc;
	    break;

	case XO_STYLE_XML:
	case XO_STYLE_JSON:
	case XO_STYLE_SDPARAMS:
	case XO_STYLE_ENCODER:
	    /*
	     * Nothing to do; we did all that work just to clear the stack of
	     * formatting arguments.
	     */
	    break;
	}
    }

    FUNC1(&xb);
}