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
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_2__ {int uid; int gid; int cuid; int cgid; int mode; } ;
struct msqid_ds {TYPE_1__ msg_perm; int /*<<< orphan*/  msg_ctime; int /*<<< orphan*/  msg_rtime; int /*<<< orphan*/  msg_stime; int /*<<< orphan*/  msg_lrpid; int /*<<< orphan*/  msg_lspid; scalar_t__ msg_qbytes; int /*<<< orphan*/  msg_qnum; } ;
typedef  int mode_t ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void
FUNC5(struct msqid_ds *mp, mode_t mode)
{
	uid_t uid = FUNC3();
	gid_t gid = FUNC2();

	FUNC4("PERM: uid %d, gid %d, cuid %d, cgid %d, mode 0%o\n",
	    mp->msg_perm.uid, mp->msg_perm.gid,
	    mp->msg_perm.cuid, mp->msg_perm.cgid,
	    mp->msg_perm.mode & 0777);

	FUNC4("qnum %lu, qbytes %lu, lspid %d, lrpid %d\n",
	    mp->msg_qnum, (u_long)mp->msg_qbytes, mp->msg_lspid,
	    mp->msg_lrpid);

	FUNC4("stime: %s", FUNC1(&mp->msg_stime));
	FUNC4("rtime: %s", FUNC1(&mp->msg_rtime));
	FUNC4("ctime: %s", FUNC1(&mp->msg_ctime));

	/*
	 * Sanity check a few things.
	 */

	FUNC0(mp->msg_perm.uid == uid && mp->msg_perm.cuid == uid,
	    "uid mismatch");

	FUNC0(mp->msg_perm.gid == gid && mp->msg_perm.cgid == gid,
	    "gid mismatch");

	FUNC0((mp->msg_perm.mode & 0777) == mode, "mode mismatch");
}