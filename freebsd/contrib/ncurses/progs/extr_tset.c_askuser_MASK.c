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
typedef  int /*<<< orphan*/  answer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static const char *
FUNC8(const char *dflt)
{
    static char answer[256];
    char *p;

    /* We can get recalled; if so, don't continue uselessly. */
    FUNC0(stdin);
    if (FUNC2(stdin) || FUNC3(stdin)) {
	(void) FUNC6(stderr, "\n");
	FUNC1();
	/* NOTREACHED */
    }
    for (;;) {
	if (dflt)
	    (void) FUNC6(stderr, "Terminal type? [%s] ", dflt);
	else
	    (void) FUNC6(stderr, "Terminal type? ");
	(void) FUNC4(stderr);

	if (FUNC5(answer, sizeof(answer), stdin) == 0) {
	    if (dflt == 0) {
		FUNC1();
		/* NOTREACHED */
	    }
	    return (dflt);
	}

	if ((p = FUNC7(answer, '\n')) != 0)
	    *p = '\0';
	if (answer[0])
	    return (answer);
	if (dflt != 0)
	    return (dflt);
    }
}