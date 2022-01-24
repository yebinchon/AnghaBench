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
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,int,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char const*) ; 
 int FUNC4 (char const*,int) ; 

__attribute__((used)) static void
FUNC5(const char *fname, int intmode, const char *strmode, bool success)
{
	FILE *fp;
	int fd;

	fd = FUNC4(fname, intmode);
	FUNC0(fd != -1,
	    "open(\"%s\", %#x) failed; errno=%d", fname, intmode, errno);

	fp = FUNC3(fd, strmode);
	if (fp == NULL) {
		FUNC1(fd);
		FUNC0(success == false,
		    "fdopen(open(\"%s\", %#x), \"%s\") succeeded unexpectedly",
		    fname, intmode, strmode);
		return;
	}
	FUNC0(success == true,
	    "fdopen(open(\"%s\", %#x), \"%s\") failed; errno=%d",
	    fname, intmode, strmode, errno);
	FUNC2(fp);
}