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
struct l_shminfo64 {int /*<<< orphan*/  shmall; int /*<<< orphan*/  shmseg; int /*<<< orphan*/  shmmni; int /*<<< orphan*/  shmmin; int /*<<< orphan*/  shmmax; } ;
struct l_shminfo {int /*<<< orphan*/  shmall; int /*<<< orphan*/  shmseg; int /*<<< orphan*/  shmmni; int /*<<< orphan*/  shmmin; int /*<<< orphan*/  shmmax; } ;
typedef  int /*<<< orphan*/  linux_shminfo ;
typedef  scalar_t__ l_int ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ LINUX_IPC_64 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SV_LP64 ; 
 int /*<<< orphan*/  FUNC1 (struct l_shminfo64*,int) ; 
 int FUNC2 (struct l_shminfo64*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(l_int ver, struct l_shminfo64 *linux_shminfo64,
    caddr_t uaddr)
{
	struct l_shminfo linux_shminfo;

	if (ver == LINUX_IPC_64 || FUNC0(SV_LP64))
		return (FUNC2(linux_shminfo64, uaddr,
		    sizeof(*linux_shminfo64)));
	else {
		FUNC1(&linux_shminfo, sizeof(linux_shminfo));

		linux_shminfo.shmmax = linux_shminfo64->shmmax;
		linux_shminfo.shmmin = linux_shminfo64->shmmin;
		linux_shminfo.shmmni = linux_shminfo64->shmmni;
		linux_shminfo.shmseg = linux_shminfo64->shmseg;
		linux_shminfo.shmall = linux_shminfo64->shmall;

		return (FUNC2(&linux_shminfo, uaddr,
		    sizeof(linux_shminfo)));
	}
}