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
struct stat {size_t st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  INTERP_MARKER ; 
 int /*<<< orphan*/  LOADER_PATH ; 
 int /*<<< orphan*/  O_RDONLY ; 
 char* bootprog_interp ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 char* FUNC4 (char*,size_t,int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int,char*,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct stat*) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  swap_interpreter ; 

__attribute__((used)) static void
FUNC10(void)
{
	struct stat st;
	size_t marklen, rdsize;
	const char *guest_interp, *my_interp;
	char *buf;
	int fd;

	/*
	 * If we can't stat(2) or open(2) LOADER_PATH, then we'll fail by
	 * simply letting us roll on with whatever interpreter we were compiled
	 * with.  This is likely not going to be an issue in reality.
	 */
	buf =  NULL;
	if (FUNC7(LOADER_PATH, &st) != 0)
		return;
	if ((fd = FUNC5(LOADER_PATH, O_RDONLY)) < 0)
		return;

	rdsize = st.st_size;
	buf = FUNC3(rdsize);
	if (buf == NULL)
		goto out;
	if (FUNC6(fd, buf, rdsize) < rdsize)
		goto out;

	marklen = FUNC9(INTERP_MARKER);
	my_interp = bootprog_interp + marklen;

	/*
	 * Here we make the assumption that a loader binary without the
	 * interpreter marker is a 4th one.  All loader binaries going forward
	 * should have this properly specified, so our assumption should always
	 * be a good one.
	 */
	if ((guest_interp = FUNC4(buf, rdsize, INTERP_MARKER,
	    marklen)) != NULL)
		guest_interp += marklen;
	else
		guest_interp = "4th";

	/*
	 * The guest interpreter may not have a version of loader that
	 * specifies the interpreter installed.  If that's the case, we'll
	 * assume it's legacy (4th) and request a swap to that if we're
	 * a Lua-userboot.
	 */
	if (FUNC8(my_interp, guest_interp) != 0)
		FUNC0(swap_interpreter, guest_interp);
out:
	FUNC2(buf);
	FUNC1(fd);
	return;
}