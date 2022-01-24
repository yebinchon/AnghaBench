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
 int /*<<< orphan*/  CF_LEAFS_DONE ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6 (xo_handle_t *xop, csv_private_t *csv, const char *leafs_raw)
{
    char *cp, *ep, *np;
    ssize_t len = FUNC5(leafs_raw);
    char *leafs_buf = FUNC0(len + 1);

    FUNC3(leafs_buf, leafs_raw, len + 1); /* Make local copy */

    for (cp = leafs_buf, ep = leafs_buf + len; cp && cp < ep; cp = np) {
	np = FUNC4(cp, '.');
	if (np)
	    *np++ = '\0';

	if (*cp == '\0')		/* Skip empty names */
	    continue;

	FUNC1(xop, csv, "adding leaf: [%s]\n", cp);
	FUNC2(xop, csv, cp, 0);
    }

    /*
     * Since we've been told explicitly what leafs matter, ignore the rest
     */
    csv->c_flags |= CF_LEAFS_DONE;

    return 0;
}