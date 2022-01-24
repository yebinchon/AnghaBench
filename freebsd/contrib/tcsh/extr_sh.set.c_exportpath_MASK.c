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
struct Strbuf {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  PATHSEP ; 
 int /*<<< orphan*/  STRKPATH ; 
 int /*<<< orphan*/  STRRparen ; 
 struct Strbuf Strbuf_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct Strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct Strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static void
FUNC7(Char **val)
{
    struct Strbuf buf = Strbuf_INIT;
    Char    	*exppath;

    if (val)
	while (*val) {
	    FUNC0(&buf, *val++);
	    if (*val == 0 || FUNC5(*val, STRRparen))
		break;
	    FUNC1(&buf, PATHSEP);
	}
    exppath = FUNC2(&buf);
    FUNC3(exppath, xfree);
    FUNC6(STRKPATH, exppath);
    FUNC4(exppath);
}