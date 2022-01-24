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
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  RUMP_ETFS_BLK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 int FUNC2 (char const*,int,int) ; 
 scalar_t__ FUNC3 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(const char *devpath, const char *imgpath, size_t size)
{
	int fd;

	fd = FUNC2(imgpath, O_CREAT | O_RDWR | O_TRUNC, 0600);
	if (fd < 0)
		return -1;

	if (FUNC1(fd, size) < 0)
		goto fail;

	if (FUNC3(devpath,
	    imgpath, RUMP_ETFS_BLK, 0, size) < 0) {
		goto fail;
	}

	FUNC4(imgpath);
	return fd;
fail:
	FUNC0(fd);
	FUNC4(imgpath);
	return -1;
}