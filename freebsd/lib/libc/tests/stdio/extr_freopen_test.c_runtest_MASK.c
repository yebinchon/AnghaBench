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
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,char const*,char const*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(const char *fname1, const char *mode1, const char *fname2,
    const char *mode2, bool success)
{
	FILE *fp1, *fp2;
	const char *fname2_print;

	fname2_print = fname2 != NULL ? fname2 : "<NULL>";
	fp1 = FUNC2(fname1, mode1);
	FUNC0(fp1 != NULL,
	    "fopen(\"%s\", \"%s\") failed; errno=%d", fname1, mode1, errno);
	fp2 = FUNC3(fname2, mode2, fp1);
	if (fp2 == NULL) {
		FUNC0(success == false,
		    "freopen(\"%s\", \"%s\", fopen(\"%s\", \"%s\")) succeeded "
		    "unexpectedly", fname2_print, mode2, fname1, mode1);
		return;
	}
	FUNC0(success == true,
	    "freopen(\"%s\", \"%s\", fopen(\"%s\", \"%s\")) failed: %d",
	    fname2_print, mode2, fname1, mode1, errno);
	FUNC1(fp2);
}