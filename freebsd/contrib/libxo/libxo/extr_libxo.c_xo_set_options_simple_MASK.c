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
typedef  scalar_t__ xo_xof_flags_t ;
typedef  int /*<<< orphan*/  xo_handle_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOF_COLOR_ALLOWED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  xo_xof_simple_names ; 

__attribute__((used)) static int
FUNC10 (xo_handle_t *xop, const char *input)
{
    xo_xof_flags_t new_flag;
    char *cp, *ep, *vp, *np, *bp;
    ssize_t len = FUNC5(input) + 1;

    bp = FUNC2(len);
    FUNC3(bp, input, len);

    for (cp = bp, ep = cp + len - 1; cp && cp < ep; cp = np) {
	np = FUNC4(cp, ',');
	if (np)
	    *np++ = '\0';

	vp = FUNC4(cp, '=');
	if (vp)
	    *vp++ = '\0';

	if (FUNC9("colors", cp)) {
	    FUNC8(xop, vp);
	    continue;
	}

	new_flag = FUNC7(xo_xof_simple_names, cp, -1);
	if (new_flag != 0) {
	    FUNC1(xop, new_flag);
	} else if (FUNC9(cp, "no-color")) {
	    FUNC0(xop, XOF_COLOR_ALLOWED);
	} else {
	    FUNC6(xop, "unknown simple option: %s", cp);
	    return -1;
	}
    }

    return 0;
}