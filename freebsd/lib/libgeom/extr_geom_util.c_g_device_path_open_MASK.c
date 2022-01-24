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
 int /*<<< orphan*/  EFTYPE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  _PATH_DEV ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static char *
FUNC6(const char *devpath, int *fdp, int dowrite)
{
	char *path;
	int fd;

	/* Make sure that we can fail. */
	if (fdp != NULL)
		*fdp = -1;

	/* Use the device node if we're able to open it. */
	fd = FUNC4(devpath, dowrite ? O_RDWR : O_RDONLY);
	if (fd != -1) {
		if ((path = FUNC5(devpath)) == NULL) {
			FUNC1(fd);
			return (NULL);
		}
		goto fd_ok;
	}

	/* If we're not given an absolute path, assume /dev/ prefix. */
	if (*devpath == '/')
		return (NULL);

	FUNC0(&path, "%d%s", _PATH_DEV, devpath);
	if (path == NULL)
		return (NULL);
	fd = FUNC4(path, dowrite ? O_RDWR : O_RDONLY);
	if (fd == -1) {
		FUNC2(path);
		return (NULL);
	}

fd_ok:
	/*
	 * Let try to get sectorsize, which will prove it is a GEOM provider.
	 */
	if (FUNC3(fd) == -1) {
		FUNC2(path);
		FUNC1(fd);
		errno = EFTYPE;
		return (NULL);
	}
	if (fdp != NULL)
		*fdp = fd;
	else
		FUNC1(fd);
	return (path);
}