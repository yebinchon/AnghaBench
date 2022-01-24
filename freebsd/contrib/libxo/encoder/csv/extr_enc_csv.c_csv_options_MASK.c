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
typedef  int /*<<< orphan*/  xo_handle_t ;
typedef  int ssize_t ;
struct TYPE_5__ {int /*<<< orphan*/  c_flags; } ;
typedef  TYPE_1__ csv_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  CF_DEBUG ; 
 int /*<<< orphan*/  CF_DOS_NEWLINE ; 
 int /*<<< orphan*/  CF_HAS_PATH ; 
 int /*<<< orphan*/  CF_NO_HEADER ; 
 int /*<<< orphan*/  CF_NO_KEYS ; 
 int /*<<< orphan*/  CF_NO_QUOTES ; 
 int /*<<< orphan*/  CF_VALUE_ONLY ; 
 char* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*,char*) ; 

__attribute__((used)) static int
FUNC8 (xo_handle_t *xop, csv_private_t *csv, const char *raw_opts)
{
    ssize_t len = FUNC5(raw_opts);
    char *options = FUNC0(len + 1);
    FUNC3(options, raw_opts, len);
    options[len] = '\0';

    char *cp, *ep, *np, *vp;
    for (cp = options, ep = options + len + 1; cp && cp < ep; cp = np) {
	np = FUNC4(cp, '+');
	if (np)
	    *np++ = '\0';

	vp = FUNC4(cp, '=');
	if (vp)
	    *vp++ = '\0';

	if (FUNC6(cp, "path")) {
	    /* Record the path */
	    if (vp != NULL && FUNC2(xop, csv, vp))
  		return -1;

	    csv->c_flags |= CF_HAS_PATH; /* Yup, we have an explicit path now */

	} else if (FUNC6(cp, "leafs")
		   || FUNC6(cp, "leaf")
		   || FUNC6(cp, "leaves")) {
	    /* Record the leafs */
	    if (vp != NULL && FUNC1(xop, csv, vp))
  		return -1;

	} else if (FUNC6(cp, "no-keys")) {
	    csv->c_flags |= CF_NO_KEYS;
	} else if (FUNC6(cp, "no-header")) {
	    csv->c_flags |= CF_NO_HEADER;
	} else if (FUNC6(cp, "value-only")) {
	    csv->c_flags |= CF_VALUE_ONLY;
	} else if (FUNC6(cp, "dos")) {
	    csv->c_flags |= CF_DOS_NEWLINE;
	} else if (FUNC6(cp, "no-quotes")) {
	    csv->c_flags |= CF_NO_QUOTES;
	} else if (FUNC6(cp, "debug")) {
	    csv->c_flags |= CF_DEBUG;
	} else {
	    FUNC7(xop, -1,
		       "unknown encoder option value: '%s'", cp);
	    return -1;
	}
    }

    return 0;
}