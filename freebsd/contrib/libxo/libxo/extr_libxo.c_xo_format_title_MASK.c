#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xo_xff_flags_t ;
struct TYPE_21__ {char* xb_curp; char* xb_bufp; int xb_size; } ;
struct TYPE_19__ {int xo_columns; int xo_anchor_columns; TYPE_3__ xo_data; int /*<<< orphan*/  xo_indent_by; } ;
typedef  TYPE_1__ xo_handle_t ;
struct TYPE_20__ {char* xfi_format; int xfi_flen; int /*<<< orphan*/  xfi_flags; } ;
typedef  TYPE_2__ xo_field_info_t ;
typedef  TYPE_3__ xo_buffer_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  div_open ;
typedef  int /*<<< orphan*/  div_middle ;
typedef  int /*<<< orphan*/  div_close ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XOF_COLUMNS ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOF_PRETTY ; 
 int /*<<< orphan*/  XOIF_ANCHOR ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
#define  XO_STYLE_ENCODER 131 
 int XO_STYLE_HTML ; 
#define  XO_STYLE_JSON 130 
#define  XO_STYLE_SDPARAMS 129 
#define  XO_STYLE_XML 128 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC16 (xo_handle_t *xop, xo_field_info_t *xfip,
		 const char *value, ssize_t vlen)
{
    const char *fmt = xfip->xfi_format;
    ssize_t flen = xfip->xfi_flen;
    xo_xff_flags_t flags = xfip->xfi_flags;

    static char div_open[] = "<div class=\"title";
    static char div_middle[] = "\">";
    static char div_close[] = "</div>";

    if (flen == 0) {
	fmt = "%s";
	flen = 2;
    }

    switch (FUNC15(xop)) {
    case XO_STYLE_XML:
    case XO_STYLE_JSON:
    case XO_STYLE_SDPARAMS:
    case XO_STYLE_ENCODER:
	/*
	 * Even though we don't care about text, we need to do
	 * enough parsing work to skip over the right bits of xo_vap.
	 */
	FUNC14(xop, TRUE, value, vlen, fmt, flen, flags);
	return;
    }

    xo_buffer_t *xbp = &xop->xo_data;
    ssize_t start = xbp->xb_curp - xbp->xb_bufp;
    ssize_t left = xbp->xb_size - start;
    ssize_t rc;

    if (FUNC15(xop) == XO_STYLE_HTML) {
	FUNC13(xop, 0);
	if (FUNC0(xop, XOF_PRETTY))
	    FUNC7(xop, xop->xo_indent_by);
	FUNC5(&xop->xo_data, div_open, sizeof(div_open) - 1);
	FUNC8(xop);
	FUNC5(&xop->xo_data, div_middle, sizeof(div_middle) - 1);
    }

    start = xbp->xb_curp - xbp->xb_bufp; /* Reset start */
    if (vlen) {
	char *newfmt = FUNC2(flen + 1);
	FUNC3(newfmt, fmt, flen);
	newfmt[flen] = '\0';

	/* If len is non-zero, the format string apply to the name */
	char *newstr = FUNC2(vlen + 1);
	FUNC3(newstr, value, vlen);
	newstr[vlen] = '\0';

	if (newstr[vlen - 1] == 's') {
	    char *bp;

	    rc = FUNC4(NULL, 0, newfmt, newstr);
	    if (rc > 0) {
		/*
		 * We have to do this the hard way, since we might need
		 * the columns.
		 */
		bp = FUNC2(rc + 1);
		rc = FUNC4(bp, rc + 1, newfmt, newstr);

		FUNC10(xop, bp, rc, flags);
	    }
	    goto move_along;

	} else {
	    rc = FUNC4(xbp->xb_curp, left, newfmt, newstr);
	    if (rc >= left) {
		if (!FUNC6(xbp, rc))
		    return;
		left = xbp->xb_size - (xbp->xb_curp - xbp->xb_bufp);
		rc = FUNC4(xbp->xb_curp, left, newfmt, newstr);
	    }

	    if (rc > 0) {
		if (FUNC0(xop, XOF_COLUMNS))
		    xop->xo_columns += rc;
		if (FUNC1(xop, XOIF_ANCHOR))
		    xop->xo_anchor_columns += rc;
	    }
	}

    } else {
	FUNC11(xop, NULL, fmt, flen, flags);

	/* xo_do_format_field moved curp, so we need to reset it */
	rc = xbp->xb_curp - (xbp->xb_bufp + start);
	xbp->xb_curp = xbp->xb_bufp + start;
    }

    /* If we're styling HTML, then we need to escape it */
    if (FUNC15(xop) == XO_STYLE_HTML) {
	rc = FUNC12(xbp, rc, 0);
    }

    if (rc > 0)
	xbp->xb_curp += rc;

 move_along:
    if (FUNC15(xop) == XO_STYLE_HTML) {
	FUNC9(xop, div_close, sizeof(div_close) - 1);
	if (FUNC0(xop, XOF_PRETTY))
	    FUNC9(xop, "\n", 1);
    }
}