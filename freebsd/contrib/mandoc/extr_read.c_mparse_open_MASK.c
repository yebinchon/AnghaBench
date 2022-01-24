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
struct mparse {int gzip; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char const*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char const*,char) ; 

int
FUNC5(struct mparse *curp, const char *file)
{
	char		 *cp;
	int		  fd, save_errno;

	cp = FUNC4(file, '.');
	curp->gzip = (cp != NULL && ! FUNC3(cp + 1, "gz"));

	/* First try to use the filename as it is. */

	if ((fd = FUNC2(file, O_RDONLY)) != -1)
		return fd;

	/*
	 * If that doesn't work and the filename doesn't
	 * already  end in .gz, try appending .gz.
	 */

	if ( ! curp->gzip) {
		save_errno = errno;
		FUNC1(&cp, "%s.gz", file);
		fd = FUNC2(cp, O_RDONLY);
		FUNC0(cp);
		errno = save_errno;
		if (fd != -1) {
			curp->gzip = 1;
			return fd;
		}
	}

	/* Neither worked, give up. */

	return -1;
}