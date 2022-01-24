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
struct tm {int dummy; } ;

/* Variables and functions */
 scalar_t__ Gflag ; 
 int /*<<< orphan*/  Gflag_time ; 
 scalar_t__ PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct tm* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (char*,scalar_t__,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(char *buffer, char *orig_name, int cnt, int max_chars)
{
        char *filename = FUNC3(PATH_MAX + 1);
        if (filename == NULL)
            FUNC0("Makefilename: malloc");

        /* Process with strftime if Gflag is set. */
        if (Gflag != 0) {
          struct tm *local_tm;

          /* Convert Gflag_time to a usable format */
          if ((local_tm = FUNC2(&Gflag_time)) == NULL) {
                  FUNC0("MakeTimedFilename: localtime");
          }

          /* There's no good way to detect an error in strftime since a return
           * value of 0 isn't necessarily failure.
           */
          FUNC5(filename, PATH_MAX, orig_name, local_tm);
        } else {
          FUNC6(filename, orig_name, PATH_MAX);
        }

	if (cnt == 0 && max_chars == 0)
		FUNC6(buffer, filename, PATH_MAX + 1);
	else
		if (FUNC4(buffer, PATH_MAX + 1, "%s%0*d", filename, max_chars, cnt) > PATH_MAX)
                  /* Report an error if the filename is too large */
                  FUNC0("too many output files or filename is too long (> %d)", PATH_MAX);
        FUNC1(filename);
}