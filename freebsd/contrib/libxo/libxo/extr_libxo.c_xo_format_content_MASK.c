#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xo_xff_flags_t ;
typedef  int /*<<< orphan*/  xo_handle_t ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
#define  XO_STYLE_ENCODER 133 
#define  XO_STYLE_HTML 132 
#define  XO_STYLE_JSON 131 
#define  XO_STYLE_SDPARAMS 130 
#define  XO_STYLE_TEXT 129 
#define  XO_STYLE_XML 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (xo_handle_t *xop, const char *class_name,
		   const char *tag_name,
		   const char *value, ssize_t vlen,
		   const char *fmt, ssize_t flen,
		   xo_xff_flags_t flags)
{
    switch (FUNC5(xop)) {
    case XO_STYLE_TEXT:
	FUNC4(xop, FALSE, value, vlen, fmt, flen, flags);
	break;

    case XO_STYLE_HTML:
	FUNC0(xop, class_name, flags, NULL, 0,
			  value, vlen, fmt, flen, NULL, 0);
	break;

    case XO_STYLE_XML:
    case XO_STYLE_JSON:
    case XO_STYLE_SDPARAMS:
	if (tag_name) {
	    FUNC3(xop, tag_name);
	    FUNC2(xop, "message", 7, value, vlen,
			    fmt, flen, NULL, 0, flags);
	    FUNC1(xop, tag_name);

	} else {
	    /*
	     * Even though we don't care about labels, we need to do
	     * enough parsing work to skip over the right bits of xo_vap.
	     */
	    FUNC4(xop, TRUE, value, vlen, fmt, flen, flags);
	}
	break;

    case XO_STYLE_ENCODER:
	FUNC4(xop, TRUE, value, vlen, fmt, flen, flags);
	break;
    }
}