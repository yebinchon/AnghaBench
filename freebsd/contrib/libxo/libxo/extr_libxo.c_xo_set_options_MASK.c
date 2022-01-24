#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xo_xof_flags_t ;
struct TYPE_10__ {int xo_style; void* xo_indent_by; } ;
typedef  TYPE_1__ xo_handle_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ XOF_COLOR_ALLOWED ; 
 scalar_t__ XOF_FLUSH ; 
 scalar_t__ XOF_FLUSH_LINE ; 
 scalar_t__ XOF_INFO ; 
 scalar_t__ XOF_KEYS ; 
 scalar_t__ XOF_LOG_GETTEXT ; 
 scalar_t__ XOF_NO_HUMANIZE ; 
 scalar_t__ XOF_PRETTY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ XOF_UNDERSCORES ; 
 scalar_t__ XOF_UNITS ; 
 scalar_t__ XOF_WARN ; 
 scalar_t__ XOF_XPATH ; 
 int XO_STYLE_ENCODER ; 
 int XO_STYLE_HTML ; 
 int XO_STYLE_JSON ; 
 int XO_STYLE_TEXT ; 
 int XO_STYLE_XML ; 
 char* FUNC2 (int) ; 
 void* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (char const*) ; 
 int FUNC7 (char const*,char*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 

int
FUNC16 (xo_handle_t *xop, const char *input)
{
    char *cp, *ep, *vp, *np, *bp;
    int style = -1, new_style, rc = 0;
    ssize_t len;
    xo_xof_flags_t new_flag;

    if (input == NULL)
	return 0;

    xop = FUNC8(xop);

#ifdef LIBXO_COLOR_ON_BY_DEFAULT
    /* If the installer used --enable-color-on-by-default, then we allow it */
    XOF_SET(xop, XOF_COLOR_ALLOWED);
#endif /* LIBXO_COLOR_ON_BY_DEFAULT */

    /*
     * We support a simpler, old-school style of giving option
     * also, using a single character for each option.  It's
     * ideal for lazy people, such as myself.
     */
    if (*input == ':') {
	ssize_t sz;

	for (input++ ; *input; input++) {
	    switch (*input) {
	    case 'c':
		FUNC1(xop, XOF_COLOR_ALLOWED);
		break;

	    case 'f':
		FUNC1(xop, XOF_FLUSH);
		break;

	    case 'F':
		FUNC1(xop, XOF_FLUSH_LINE);
		break;

	    case 'g':
		FUNC1(xop, XOF_LOG_GETTEXT);
		break;

	    case 'H':
		xop->xo_style = XO_STYLE_HTML;
		break;

	    case 'I':
		FUNC1(xop, XOF_INFO);
		break;

	    case 'i':
		sz = FUNC7(input + 1, "0123456789");
		if (sz > 0) {
		    xop->xo_indent_by = FUNC3(input + 1);
		    input += sz - 1;	/* Skip value */
		}
		break;

	    case 'J':
		xop->xo_style = XO_STYLE_JSON;
		break;

	    case 'k':
		FUNC1(xop, XOF_KEYS);
		break;

	    case 'n':
		FUNC1(xop, XOF_NO_HUMANIZE);
		break;

	    case 'P':
		FUNC1(xop, XOF_PRETTY);
		break;

	    case 'T':
		xop->xo_style = XO_STYLE_TEXT;
		break;

	    case 'U':
		FUNC1(xop, XOF_UNITS);
		break;

	    case 'u':
		FUNC1(xop, XOF_UNDERSCORES);
		break;

	    case 'W':
		FUNC1(xop, XOF_WARN);
		break;

	    case 'X':
		xop->xo_style = XO_STYLE_XML;
		break;

	    case 'x':
		FUNC1(xop, XOF_XPATH);
		break;
	    }
	}
	return 0;
    }

    len = FUNC6(input) + 1;
    bp = FUNC2(len);
    FUNC4(bp, input, len);

    for (cp = bp, ep = cp + len - 1; cp && cp < ep; cp = np) {
	np = FUNC5(cp, ',');
	if (np)
	    *np++ = '\0';

	vp = FUNC5(cp, '=');
	if (vp)
	    *vp++ = '\0';

	if (FUNC14("colors", cp)) {
	    FUNC13(xop, vp);
	    continue;
	}

	/*
	 * For options, we don't allow "encoder" since we want to
	 * handle it explicitly below as "encoder=xxx".
	 */
	new_style = FUNC12(cp);
	if (new_style >= 0 && new_style != XO_STYLE_ENCODER) {
	    if (style >= 0)
		FUNC15("ignoring multiple styles: '%s'", cp);
	    else
		style = new_style;
	} else {
	    new_flag = FUNC11(cp);
	    if (new_flag != 0)
		FUNC1(xop, new_flag);
	    else if (FUNC14(cp, "no-color"))
		FUNC0(xop, XOF_COLOR_ALLOWED);
	    else if (FUNC14(cp, "indent")) {
		if (vp)
		    xop->xo_indent_by = FUNC3(vp);
		else
		    FUNC10(xop, "missing value for indent option");
	    } else if (FUNC14(cp, "encoder")) {
		if (vp == NULL)
		    FUNC10(xop, "missing value for encoder option");
		else {
		    rc = FUNC9(xop, vp);
		    if (rc)
			FUNC15("error initializing encoder: %s", vp);
		}
		
	    } else {
		FUNC15("unknown libxo option value: '%s'", cp);
		rc = -1;
	    }
	}
    }

    if (style > 0)
	xop->xo_style= style;

    return rc;
}