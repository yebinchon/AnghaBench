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
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int CORRECT_O_ACCMODE ; 
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_GETFL ; 
 int O_APPEND ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char) ; 

__attribute__((used)) static void
FUNC7(const char *fname, const char *mode)
{
	FILE *fp;
	int exp_fget_ret, fget_ret, fd, flags, wantedflags;

	fp = FUNC5(fname, mode);
	FUNC0(fp != NULL,
	    "fopen(\"%s\", \"%s\") failed", fname, mode);
	fd = FUNC4(fp);
	FUNC0(fd >= 0, "fileno() failed for fopen");
	exp_fget_ret = FUNC6(mode, 'e') != NULL ? FD_CLOEXEC : 0;
	FUNC0((fget_ret = FUNC3(fd, F_GETFD)) == exp_fget_ret,
	    "fcntl(.., F_GETFD) didn't FD_CLOEXEC as expected %d != %d",
	    exp_fget_ret, fget_ret);
	flags = FUNC3(fd, F_GETFL);
	if (FUNC6(mode, '+'))
		wantedflags = O_RDWR | (*mode == 'a' ? O_APPEND : 0);
	else if (*mode == 'r')
		wantedflags = O_RDONLY;
	else if (*mode == 'w')
		wantedflags = O_WRONLY;
	else if (*mode == 'a')
		wantedflags = O_WRONLY | O_APPEND;
	else
		wantedflags = -1;
	FUNC2(fp);
	if (wantedflags == -1)
		FUNC1("unrecognized mode: %s", mode);
	else if ((flags & (CORRECT_O_ACCMODE | O_APPEND)) != wantedflags)
		FUNC1("incorrect access mode: %s", mode);
}