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
struct l_shmid_ds {scalar_t__ shm_segsz; scalar_t__ shm_atime; scalar_t__ shm_dtime; scalar_t__ shm_ctime; scalar_t__ shm_cpid; scalar_t__ shm_lpid; scalar_t__ shm_nattch; int /*<<< orphan*/  shm_perm; } ;
struct l_shmid64_ds {scalar_t__ shm_segsz; scalar_t__ shm_atime; scalar_t__ shm_dtime; scalar_t__ shm_ctime; scalar_t__ shm_cpid; scalar_t__ shm_lpid; scalar_t__ shm_nattch; int /*<<< orphan*/  shm_perm; } ;
typedef  int /*<<< orphan*/  linux_shmid ;
typedef  scalar_t__ l_int ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int EOVERFLOW ; 
 scalar_t__ LINUX_IPC_64 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SV_LP64 ; 
 int /*<<< orphan*/  FUNC1 (struct l_shmid_ds*,int) ; 
 int FUNC2 (struct l_shmid_ds*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(l_int ver, struct l_shmid64_ds *linux_shmid64, caddr_t uaddr)
{
	struct l_shmid_ds linux_shmid;
	int error;

	if (ver == LINUX_IPC_64 || FUNC0(SV_LP64))
		return (FUNC2(linux_shmid64, uaddr, sizeof(*linux_shmid64)));
	else {
		FUNC1(&linux_shmid, sizeof(linux_shmid));

		error = FUNC3(&linux_shmid64->shm_perm,
		    &linux_shmid.shm_perm);
		if (error != 0)
			return (error);

		linux_shmid.shm_segsz = linux_shmid64->shm_segsz;
		linux_shmid.shm_atime = linux_shmid64->shm_atime;
		linux_shmid.shm_dtime = linux_shmid64->shm_dtime;
		linux_shmid.shm_ctime = linux_shmid64->shm_ctime;
		linux_shmid.shm_cpid = linux_shmid64->shm_cpid;
		linux_shmid.shm_lpid = linux_shmid64->shm_lpid;
		linux_shmid.shm_nattch = linux_shmid64->shm_nattch;

		/* Linux does not check overflow */
		if (linux_shmid.shm_segsz != linux_shmid64->shm_segsz ||
		    linux_shmid.shm_atime != linux_shmid64->shm_atime ||
		    linux_shmid.shm_dtime != linux_shmid64->shm_dtime ||
		    linux_shmid.shm_ctime != linux_shmid64->shm_ctime ||
		    linux_shmid.shm_cpid != linux_shmid64->shm_cpid ||
		    linux_shmid.shm_lpid != linux_shmid64->shm_lpid ||
		    linux_shmid.shm_nattch != linux_shmid64->shm_nattch)
			return (EOVERFLOW);

		return (FUNC2(&linux_shmid, uaddr, sizeof(linux_shmid)));
	}
}