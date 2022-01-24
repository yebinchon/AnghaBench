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
 scalar_t__ ENOSPC ; 
 char* _PATH_TMP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void
FUNC4(char *filename)
{
	const char *tmpdir;

	FUNC3("%s: cannot write directory database", filename);
	if (errno == ENOSPC) {
		if ((tmpdir = FUNC2("TMPDIR")) == NULL || tmpdir[0] == '\0')
			tmpdir = _PATH_TMP;
		FUNC1(stderr, "Try making space in %s, %s\n%s\n", tmpdir,
		    "or set environment variable TMPDIR",
		    "to an alternate location with more disk space.");
	}
	FUNC0(1);
}