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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIRBLKSIZ ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ INO64_FIRST ; 
 int /*<<< orphan*/  SYS_freebsd11_getdirentries ; 
 int FUNC0 (char*,int,char*,size_t) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int,char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 size_t FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,char*,size_t,int /*<<< orphan*/ *) ; 

ssize_t
FUNC7(int fd, char *buf, size_t nbytes, off_t *basep)
{
	char *oldbuf;
	size_t len;
	ssize_t rv;

	if (FUNC1() >= INO64_FIRST)
		return (FUNC2(fd, buf, nbytes, basep));

	/*
	 * Because the old system call returns entries that are smaller than the
	 * new, we could wind up in a situation where we have too many to fit in
	 * the buffer with the new encoding. So sacrifice a small bit of
	 * efficiency to ensure that never happens. We pick 1/4 the size round
	 * up to the next DIRBLKSIZ. This will guarnatee enough room exists in
	 * the dst buffer due to changes in efficiency in packing dirent
	 * entries. We don't check against minimum block size to avoid a lot of
	 * stat calls, we'll see if that's wise or not.
	 * TBD: Will this difference matter to lseek?
	 */
	len = FUNC5(nbytes / 4, DIRBLKSIZ);
	oldbuf = FUNC4(len);
	if (oldbuf == NULL) {
		errno = EINVAL;		/* ENOMEM not in possible list */
		return (-1);
	}
	rv = FUNC6(SYS_freebsd11_getdirentries, fd, oldbuf, len, basep);
	if (rv == -1) {
		FUNC3(oldbuf);
		return (rv);
	}
	if (rv > 0)
		rv = FUNC0(oldbuf, rv, buf, nbytes);
	FUNC3(oldbuf);

	return (rv);
}