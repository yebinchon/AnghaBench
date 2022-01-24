#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct l_shmid_ds {TYPE_1__ shm_perm; } ;
struct l_shmid64_ds {TYPE_1__ shm_perm; } ;
typedef  int /*<<< orphan*/  linux_shmid ;
typedef  scalar_t__ l_int ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ LINUX_IPC_64 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SV_LP64 ; 
 int /*<<< orphan*/  FUNC1 (struct l_shmid_ds*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct l_shmid_ds*,int) ; 

__attribute__((used)) static int
FUNC3(l_int ver, struct l_shmid64_ds *linux_shmid64, caddr_t uaddr)
{
	struct l_shmid_ds linux_shmid;
	int error;

	if (ver == LINUX_IPC_64 || FUNC0(SV_LP64))
		return (FUNC2(uaddr, linux_shmid64, sizeof(*linux_shmid64)));
	else {
		error = FUNC2(uaddr, &linux_shmid, sizeof(linux_shmid));
		if (error != 0)
			return (error);

		FUNC1(linux_shmid64, sizeof(*linux_shmid64));

		linux_shmid64->shm_perm.uid = linux_shmid.shm_perm.uid;
		linux_shmid64->shm_perm.gid = linux_shmid.shm_perm.gid;
		linux_shmid64->shm_perm.mode = linux_shmid.shm_perm.mode;
		return (0);
	}
}