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
struct stat {int st_mode; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char const* STDIN_NAME ; 
 int S_IFCHR ; 
 int S_IFDIR ; 
 int S_IFMT ; 
 int S_IFREG ; 
 char* _nc_progname ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char const*,...) ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static FILE *
FUNC7(const char *filename, char *alt_file)
{
    FILE *fp;
    struct stat sb;
    int mode;

    if (!FUNC5(filename, "-")) {
	fp = FUNC1(stdin, STDIN_NAME, alt_file);
    } else if (FUNC4(filename, &sb) < 0) {
	FUNC3(stderr, "%s: %s %s\n", _nc_progname, filename, FUNC6(errno));
	FUNC0(EXIT_FAILURE);
    } else if ((mode = (sb.st_mode & S_IFMT)) == S_IFDIR
	       || (mode != S_IFREG && mode != S_IFCHR)) {
	FUNC3(stderr, "%s: %s is not a file\n", _nc_progname, filename);
	FUNC0(EXIT_FAILURE);
    } else {
	fp = FUNC2(filename, "r");

	if (fp == 0) {
	    FUNC3(stderr, "%s: Can't open %s\n", _nc_progname, filename);
	    FUNC0(EXIT_FAILURE);
	}
	if (mode != S_IFREG) {
	    if (alt_file != 0) {
		FILE *fp2 = FUNC1(fp, filename, alt_file);
		fp = fp2;
	    } else {
		FUNC3(stderr, "%s: %s is not a file\n", _nc_progname, filename);
		FUNC0(EXIT_FAILURE);
	    }
	}
    }
    return fp;
}