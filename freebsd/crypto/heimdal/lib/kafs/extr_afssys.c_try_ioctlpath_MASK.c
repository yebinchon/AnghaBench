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
struct procdata {unsigned long param2; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct devdata {unsigned long param2; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFSCALL_PIOCTL ; 
 int EDOM ; 
 int EFAULT ; 
 int ENOTCONN ; 
#define  LINUX_PROC_POINT 129 
#define  MACOS_DEV_POINT 128 
 int /*<<< orphan*/  O_RDWR ; 
 scalar_t__ VIOCGETTOK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int afs_entry_point ; 
 unsigned long afs_ioctlnum ; 
 int /*<<< orphan*/ * afs_ioctlpath ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (int,unsigned long,struct procdata*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(const char *path, unsigned long ioctlnum, int entrypoint)
{
    int fd, ret, saved_errno;

    fd = FUNC3(path, O_RDWR);
    if (fd < 0)
	return 1;
    switch (entrypoint) {
    case LINUX_PROC_POINT: {
	struct procdata data = { 0, 0, 0, 0, AFSCALL_PIOCTL };
	data.param2 = (unsigned long)VIOCGETTOK;
	ret = FUNC2(fd, ioctlnum, &data);
	break;
    }
    case MACOS_DEV_POINT: {
	struct devdata data = { AFSCALL_PIOCTL, 0, 0, 0, 0, 0, 0, 0 };
	data.param2 = (unsigned long)VIOCGETTOK;
	ret = FUNC2(fd, ioctlnum, &data);
	break;
    }
    default:
	FUNC0();
    }
    saved_errno = errno;
    FUNC1(fd);
    /*
     * Be quite liberal in what error are ok, the first is the one
     * that should trigger given that params is NULL.
     */
    if (ret &&
	(saved_errno != EFAULT &&
	 saved_errno != EDOM &&
	 saved_errno != ENOTCONN))
	return 1;
    afs_ioctlnum = ioctlnum;
    afs_ioctlpath = FUNC4(path);
    if (afs_ioctlpath == NULL)
	return 1;
    afs_entry_point = entrypoint;
    return 0;
}