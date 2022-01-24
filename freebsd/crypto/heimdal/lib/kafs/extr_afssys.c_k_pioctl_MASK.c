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
struct procdata {unsigned long param1; unsigned long param2; unsigned long param3; unsigned long param4; int retval; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct devdata {unsigned long param1; unsigned long param2; unsigned long param3; unsigned long param4; int retval; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct ViceIoctl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFSCALL_PIOCTL ; 
#define  AIX_ENTRY_POINTS 134 
 int /*<<< orphan*/  ENOSYS ; 
#define  LINUX_PROC_POINT 133 
#define  MACOS_DEV_POINT 132 
#define  MULTIPLE_ENTRY_POINT 131 
 int FUNC0 (char*,int,struct ViceIoctl*,int) ; 
 int /*<<< orphan*/  SIGSYS ; 
#define  SINGLE_ENTRY_POINT 130 
#define  SINGLE_ENTRY_POINT2 129 
#define  SINGLE_ENTRY_POINT3 128 
 int afs_entry_point ; 
 int /*<<< orphan*/ * afs_syscalls ; 
 int FUNC1 (struct procdata*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC5(char *a_path,
	 int o_opcode,
	 struct ViceIoctl *a_paramsP,
	 int a_followSymlinks)
{
#ifndef NO_AFS
    switch(afs_entry_point){
#if defined(AFS_SYSCALL) || defined(AFS_SYSCALL2) || defined(AFS_SYSCALL3)
    case SINGLE_ENTRY_POINT:
    case SINGLE_ENTRY_POINT2:
    case SINGLE_ENTRY_POINT3:
	return syscall(afs_syscalls[0], AFSCALL_PIOCTL,
		       a_path, o_opcode, a_paramsP, a_followSymlinks);
#endif
#if defined(AFS_PIOCTL)
    case MULTIPLE_ENTRY_POINT:
	return syscall(afs_syscalls[0],
		       a_path, o_opcode, a_paramsP, a_followSymlinks);
#endif
    case LINUX_PROC_POINT: {
	struct procdata data = { 0, 0, 0, 0, AFSCALL_PIOCTL };
	data.param1 = (unsigned long)a_path;
	data.param2 = (unsigned long)o_opcode;
	data.param3 = (unsigned long)a_paramsP;
	data.param4 = (unsigned long)a_followSymlinks;
	return FUNC1(&data);
    }
    case MACOS_DEV_POINT: {
	struct devdata data = { AFSCALL_PIOCTL, 0, 0, 0, 0, 0, 0, 0 };
	int ret;

	data.param1 = (unsigned long)a_path;
	data.param2 = (unsigned long)o_opcode;
	data.param3 = (unsigned long)a_paramsP;
	data.param4 = (unsigned long)a_followSymlinks;

	ret = FUNC1(&data);
	if (ret)
	    return ret;

	return data.retval;
    }
#ifdef _AIX
    case AIX_ENTRY_POINTS:
	return Pioctl(a_path, o_opcode, a_paramsP, a_followSymlinks);
#endif
    }
    errno = ENOSYS;
#ifdef SIGSYS
    kill(getpid(), SIGSYS);	/* You lose! */
#endif
#endif /* NO_AFS */
    return -1;
}