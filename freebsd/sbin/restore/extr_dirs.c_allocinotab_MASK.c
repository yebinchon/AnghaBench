#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct modeinfo {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  flags; int /*<<< orphan*/  mode; int /*<<< orphan*/  extsize; TYPE_2__* ctimep; TYPE_1__* mtimep; int /*<<< orphan*/  ino; } ;
struct inotab {long t_seekpt; int /*<<< orphan*/  t_ino; struct inotab* t_next; } ;
struct context {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  file_flags; int /*<<< orphan*/  mode; int /*<<< orphan*/  extsize; int /*<<< orphan*/  birthtime_nsec; int /*<<< orphan*/  birthtime_sec; int /*<<< orphan*/  atime_nsec; int /*<<< orphan*/  atime_sec; int /*<<< orphan*/  mtime_nsec; int /*<<< orphan*/  mtime_sec; int /*<<< orphan*/  ino; } ;
struct TYPE_4__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_3__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct inotab* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 struct inotab** inotab ; 
 int /*<<< orphan*/ * mf ; 
 int /*<<< orphan*/  modefile ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static struct inotab *
FUNC5(struct context *ctxp, long seekpt)
{
	struct inotab	*itp;
	struct modeinfo node;

	itp = FUNC1(1, sizeof(struct inotab));
	if (itp == NULL)
		FUNC4("no memory for directory table\n");
	itp->t_next = inotab[FUNC0(ctxp->ino)];
	inotab[FUNC0(ctxp->ino)] = itp;
	itp->t_ino = ctxp->ino;
	itp->t_seekpt = seekpt;
	if (mf == NULL)
		return (itp);
	node.ino = ctxp->ino;
	node.mtimep[0].tv_sec = ctxp->atime_sec;
	node.mtimep[0].tv_nsec = ctxp->atime_nsec;
	node.mtimep[1].tv_sec = ctxp->mtime_sec;
	node.mtimep[1].tv_nsec = ctxp->mtime_nsec;
	node.ctimep[0].tv_sec = ctxp->atime_sec;
	node.ctimep[0].tv_nsec = ctxp->atime_nsec;
	node.ctimep[1].tv_sec = ctxp->birthtime_sec;
	node.ctimep[1].tv_nsec = ctxp->birthtime_nsec;
	node.extsize = ctxp->extsize;
	node.mode = ctxp->mode;
	node.flags = ctxp->file_flags;
	node.uid = ctxp->uid;
	node.gid = ctxp->gid;
	if (FUNC3((char *)&node, sizeof(struct modeinfo), 1, mf) != 1)
		FUNC2(modefile);
	return (itp);
}