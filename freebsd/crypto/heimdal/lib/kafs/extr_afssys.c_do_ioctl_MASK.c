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
 int EINVAL ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  afs_ioctlnum ; 
 int /*<<< orphan*/  afs_ioctlpath ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(void *data)
{
    int fd, ret, saved_errno;
    fd = FUNC2(afs_ioctlpath, O_RDWR);
    if (fd < 0) {
	errno = EINVAL;
	return -1;
    }
    ret = FUNC1(fd, afs_ioctlnum, data);
    saved_errno = errno;
    FUNC0(fd);
    errno = saved_errno;
    return ret;
}