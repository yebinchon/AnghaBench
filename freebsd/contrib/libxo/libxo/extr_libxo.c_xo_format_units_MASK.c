#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xo_xff_flags_t ;
struct TYPE_14__ {scalar_t__ xb_curp; scalar_t__ xb_bufp; } ;
struct TYPE_12__ {scalar_t__ xo_units_offset; TYPE_3__ xo_data; } ;
typedef  TYPE_1__ xo_handle_t ;
struct TYPE_13__ {char* xfi_format; scalar_t__ xfi_flen; int /*<<< orphan*/  xfi_flags; } ;
typedef  TYPE_2__ xo_field_info_t ;
typedef  TYPE_3__ xo_buffer_t ;
typedef  int /*<<< orphan*/  units_start_xml ;
typedef  int /*<<< orphan*/  units_start_html ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOIF_UNITS_PENDING ; 
 scalar_t__ XO_STYLE_HTML ; 
 scalar_t__ XO_STYLE_XML ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ *,char const*,scalar_t__,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9 (xo_handle_t *xop, xo_field_info_t *xfip,
		 const char *value, ssize_t vlen)
{
    const char *fmt = xfip->xfi_format;
    ssize_t flen = xfip->xfi_flen;
    xo_xff_flags_t flags = xfip->xfi_flags;

    static char units_start_xml[] = " units=\"";
    static char units_start_html[] = " data-units=\"";

    if (!FUNC0(xop, XOIF_UNITS_PENDING)) {
	FUNC7(xop, "units", NULL, value, vlen, fmt, flen, flags);
	return;
    }

    xo_buffer_t *xbp = &xop->xo_data;
    ssize_t start = xop->xo_units_offset;
    ssize_t stop = xbp->xb_curp - xbp->xb_bufp;

    if (FUNC8(xop) == XO_STYLE_XML)
	FUNC4(xbp, units_start_xml, sizeof(units_start_xml) - 1);
    else if (FUNC8(xop) == XO_STYLE_HTML)
	FUNC4(xbp, units_start_html, sizeof(units_start_html) - 1);
    else
	return;

    if (vlen)
	FUNC5(xop, value, vlen);
    else
	FUNC6(xop, NULL, fmt, flen, flags);

    FUNC4(xbp, "\"", 1);

    ssize_t now = xbp->xb_curp - xbp->xb_bufp;
    ssize_t delta = now - stop;
    if (delta <= 0) {		/* Strange; no output to move */
	xbp->xb_curp = xbp->xb_bufp + stop; /* Reset buffer to prior state */
	return;
    }

    /*
     * Now we're in it alright.  We've need to insert the unit value
     * we just created into the right spot.  We make a local copy,
     * move it and then insert our copy.  We know there's room in the
     * buffer, since we're just moving this around.
     */
    char *buf = FUNC1(delta);

    FUNC2(buf, xbp->xb_bufp + stop, delta);
    FUNC3(xbp->xb_bufp + start + delta, xbp->xb_bufp + start, stop - start);
    FUNC3(xbp->xb_bufp + start, buf, delta);
}