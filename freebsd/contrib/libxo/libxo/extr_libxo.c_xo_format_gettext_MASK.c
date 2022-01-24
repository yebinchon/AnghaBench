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
typedef  int xo_xff_flags_t ;
struct TYPE_12__ {char* xb_curp; char* xb_bufp; } ;
struct TYPE_11__ {TYPE_2__ xo_data; } ;
typedef  TYPE_1__ xo_handle_t ;
typedef  TYPE_2__ xo_buffer_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int XFF_GT_FIELD ; 
 int XFF_GT_PLURAL ; 
 int XF_ENC_UTF8 ; 
 char* FUNC0 (int) ; 
 char* FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int FUNC6 (char*,int) ; 
 char* FUNC7 (TYPE_1__*,char*) ; 
 char* FUNC8 (TYPE_1__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,char*) ; 
 int FUNC10 (TYPE_1__*,TYPE_2__*,int,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static ssize_t
FUNC11 (xo_handle_t *xop, xo_xff_flags_t flags,
		   ssize_t start_offset, ssize_t cols, int need_enc)
{
    xo_buffer_t *xbp = &xop->xo_data;

    if (!FUNC5(xbp, 1))
	return cols;

    xbp->xb_curp[0] = '\0'; /* NUL-terminate the input string */
    
    char *cp = xbp->xb_bufp + start_offset;
    ssize_t len = xbp->xb_curp - cp;
    const char *newstr = NULL;

    /*
     * The plural flag asks us to look backwards at the last numeric
     * value rendered and disect the string into two pieces.
     */
    if (flags & XFF_GT_PLURAL) {
	int n = FUNC4(xbp, start_offset);
	char *two = FUNC1(cp, (int) ',', len);
	if (two == NULL) {
	    FUNC9(xop, "no comma in plural gettext field: '%s'", cp);
	    return cols;
	}

	if (two == cp) {
	    FUNC9(xop, "nothing before comma in plural gettext "
		       "field: '%s'", cp);
	    return cols;
	}

	if (two == xbp->xb_curp) {
	    FUNC9(xop, "nothing after comma in plural gettext "
		       "field: '%s'", cp);
	    return cols;
	}

	*two++ = '\0';
	if (flags & XFF_GT_FIELD) {
	    newstr = FUNC8(xop, cp, two, n);
	} else {
	    /* Don't do a gettext() look up, just get the plural form */
	    newstr = (n == 1) ? cp : two;
	}

	/*
	 * If we returned the first string, optimize a bit by
	 * backing up over comma
	 */
	if (newstr == cp) {
	    xbp->xb_curp = two - 1; /* One for comma */
	    /*
	     * If the caller wanted UTF8, we're done; nothing changed,
	     * but we need to count the columns used.
	     */
	    if (need_enc == XF_ENC_UTF8)
		return FUNC6(cp, xbp->xb_curp - cp);
	}

    } else {
	/* The simple case (singular) */
	newstr = FUNC7(xop, cp);

	if (newstr == cp) {
	    /* If the caller wanted UTF8, we're done; nothing changed */
	    if (need_enc == XF_ENC_UTF8)
		return cols;
	}
    }

    /*
     * Since the new string string might be in gettext's buffer or
     * in the buffer (as the plural form), we make a copy.
     */
    ssize_t nlen = FUNC3(newstr);
    char *newcopy = FUNC0(nlen + 1);
    FUNC2(newcopy, newstr, nlen + 1);

    xbp->xb_curp = xbp->xb_bufp + start_offset; /* Reset the buffer */
    return FUNC10(xop, xbp, flags, NULL, newcopy, nlen, 0,
				   need_enc, XF_ENC_UTF8);
}