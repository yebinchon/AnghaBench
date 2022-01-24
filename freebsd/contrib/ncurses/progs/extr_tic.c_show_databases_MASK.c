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

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 () ; 
 char* _nc_progname ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC8 (char const*) ; 

__attribute__((used)) static void
FUNC9(const char *outdir)
{
    bool specific = (outdir != 0) || FUNC6("TERMINFO") != 0;
    char *result;
    const char *tried = 0;

    if (outdir == 0) {
	outdir = FUNC2(0);
    }
    if ((result = FUNC8(outdir)) != 0) {
	FUNC7("%s\n", result);
	FUNC5(result);
    } else {
	tried = outdir;
    }

    if ((outdir = FUNC1())) {
	if ((result = FUNC8(outdir)) != 0) {
	    FUNC7("%s\n", result);
	    FUNC5(result);
	} else if (!specific) {
	    tried = outdir;
	}
    }

    /*
     * If we can write in neither location, give an error message.
     */
    if (tried) {
	FUNC3(stdout);
	FUNC4(stderr, "%s: %s (no permission)\n", _nc_progname, tried);
	FUNC0(EXIT_FAILURE);
    }
}