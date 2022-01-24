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
struct l_semid_ds {scalar_t__ sem_otime; scalar_t__ sem_ctime; scalar_t__ sem_nsems; int /*<<< orphan*/  sem_perm; } ;
struct l_semid64_ds {scalar_t__ sem_otime; scalar_t__ sem_ctime; scalar_t__ sem_nsems; int /*<<< orphan*/  sem_perm; } ;
typedef  int /*<<< orphan*/  linux_semid ;
typedef  scalar_t__ l_int ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int EOVERFLOW ; 
 scalar_t__ LINUX_IPC_64 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SV_LP64 ; 
 int /*<<< orphan*/  FUNC1 (struct l_semid_ds*,int) ; 
 int FUNC2 (struct l_semid_ds*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(l_int ver, struct l_semid64_ds *linux_semid64, caddr_t uaddr)
{
	struct l_semid_ds linux_semid;
	int error;

	if (ver == LINUX_IPC_64 || FUNC0(SV_LP64))
		return (FUNC2(linux_semid64, uaddr, sizeof(*linux_semid64)));
	else {
		FUNC1(&linux_semid, sizeof(linux_semid));

		error = FUNC3(&linux_semid64->sem_perm,
		    &linux_semid.sem_perm);
		if (error != 0)
			return (error);

		linux_semid.sem_otime = linux_semid64->sem_otime;
		linux_semid.sem_ctime = linux_semid64->sem_ctime;
		linux_semid.sem_nsems = linux_semid64->sem_nsems;

		/* Linux does not check overflow */
		if (linux_semid.sem_otime != linux_semid64->sem_otime ||
		    linux_semid.sem_ctime != linux_semid64->sem_ctime ||
		    linux_semid.sem_nsems != linux_semid64->sem_nsems)
			return (EOVERFLOW);

		return (FUNC2(&linux_semid, uaddr, sizeof(linux_semid)));
	}
}