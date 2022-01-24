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
struct statfs {int f_flags; char* f_mntfromname; char* f_mntonname; } ;
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 int MNT_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (struct iovec**,int*,char*,char*,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (struct iovec*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct statfs *mntp)
{
	struct iovec *iov;
	int iovlen;
	char errmsg[255];

	if (mntp == NULL)
		return (0);

	iov = NULL;
	iovlen = 0;
	errmsg[0] = '\0';
	/*
	 * We modified a mounted file system.  Do a mount update on
	 * it unless it is read-write, so we can continue using it
	 * as safely as possible.
	 */
	if (mntp->f_flags & MNT_RDONLY) {
		FUNC0(&iov, &iovlen, "fstype", "ffs", 4);
		FUNC0(&iov, &iovlen, "from", mntp->f_mntfromname,
		    (size_t)-1);
		FUNC0(&iov, &iovlen, "fspath", mntp->f_mntonname,
		    (size_t)-1);
		FUNC0(&iov, &iovlen, "errmsg", errmsg,
		    sizeof(errmsg));
		FUNC0(&iov, &iovlen, "update", NULL, 0);
		FUNC0(&iov, &iovlen, "reload", NULL, 0);
		/*
		 * XX: We need the following line until we clean up
		 * nmount parsing of root mounts and NFS root mounts.
		 */
		FUNC0(&iov, &iovlen, "ro", NULL, 0);
		if (FUNC1(iov, iovlen, mntp->f_flags) == 0) {
			return (0);
		}
		FUNC2("mount reload of '%s' failed: %s %s\n\n",
		    mntp->f_mntonname, FUNC3(errno), errmsg);
		return (1);
	}
	return (0);
}