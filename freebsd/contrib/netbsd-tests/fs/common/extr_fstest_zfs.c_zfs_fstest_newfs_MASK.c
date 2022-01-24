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
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  RUMP_ETFS_BLK ; 
 int /*<<< orphan*/  SRVURL ; 
 int /*<<< orphan*/  ZFSDEV ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int,int) ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int
FUNC7(const atf_tc_t *tc, void **buf, const char *image,
	off_t size, void *fspriv)
{
	int res;
	int fd;

	/* XXX: hardcoded zfs minimum size */
	size = FUNC0(64*1024*1024, size);

	res = FUNC4();
	if (res != 0) {
		errno = res;
		return -1;
	}

	/* create backing image, sparse file is enough */
	if ((fd = FUNC3(image, O_RDWR | O_CREAT, 0777)) == -1)
		return -1;
	if (FUNC2(fd, size) == -1) {
		FUNC1(fd);
		return -1;
	}
	FUNC1(fd);

	res = FUNC6(ZFSDEV, image, RUMP_ETFS_BLK);
	if (res != 0) {
		errno = res;
		return -1;
	}

	res = FUNC5(SRVURL);
	if (res != 0) {
		errno = res;
		return -1;
	}
	*buf = NULL;

	return 0;
}