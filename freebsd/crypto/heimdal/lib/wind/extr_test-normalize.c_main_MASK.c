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
typedef  int /*<<< orphan*/  longname ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 scalar_t__ FUNC8 (char*,unsigned int) ; 

int
FUNC9(int argc, char **argv)
{
    FILE *f;
    char buf[1024];
    char filename[256] = "NormalizationTest.txt";
    unsigned failures = 0;
    unsigned lineno = 0;

    if (argc > 2)
	FUNC1(1, "usage: %s [file]", argv[0]);
    else if (argc == 2)
	FUNC7(filename, argv[1], sizeof(filename));

    f = FUNC4(filename, "r");
    if (f == NULL) {
	const char *srcdir = FUNC5("srcdir");
	if (srcdir != NULL) {
	    char longname[256];
	    FUNC6(longname, sizeof(longname), "%s/%s", srcdir, filename);
	    f = FUNC4(longname, "r");
	}
	if (f == NULL)
	    FUNC0(1, "open %s", filename);
    }
    while (FUNC3(buf, sizeof(buf), f) != NULL) {
	lineno++;
	if (buf[0] == '#')
	    continue;
	if (buf[0] == '@') {
	    continue;
	}
	failures += FUNC8(buf, lineno);
    }
    FUNC2(f);
    return failures != 0;
}