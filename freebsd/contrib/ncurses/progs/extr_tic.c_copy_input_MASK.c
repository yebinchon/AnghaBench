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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PATH_MAX ; 
 char* _nc_progname ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  to_remove ; 

__attribute__((used)) static FILE *
FUNC12(FILE *source, const char *filename, char *alt_file)
{
    char my_altfile[PATH_MAX];
    FILE *result = 0;
    FILE *target = 0;
    int ch;

    if (alt_file == 0)
	alt_file = my_altfile;

    if (source == 0) {
	FUNC2("copy_input (source)");
    } else if ((target = FUNC10(alt_file)) == 0) {
	FUNC2("copy_input (target)");
    } else {
	FUNC1(source);
	for (;;) {
	    ch = FUNC6(source);
	    if (FUNC4(source)) {
		break;
	    } else if (FUNC5(source)) {
		FUNC2(filename);
	    } else if (ch == 0) {
		/* don't loop in case someone wants to convert /dev/zero */
		FUNC8(stderr, "%s: %s is not a text-file\n", _nc_progname, filename);
		FUNC0(EXIT_FAILURE);
	    }
	    FUNC9(ch, target);
	}
	FUNC3(source);
	/*
	 * rewind() does not force the target file's data to disk (not does
	 * fflush()...).  So open a second stream on the data and then close
	 * the one that we were writing on before starting to read from the
	 * second stream.
	 */
	result = FUNC7(alt_file, "r+");
	FUNC3(target);
	to_remove = FUNC11(alt_file);
    }
    return result;
}