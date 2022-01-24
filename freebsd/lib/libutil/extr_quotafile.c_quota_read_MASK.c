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
struct quotafile {int fd; int wordsize; int /*<<< orphan*/  fsname; int /*<<< orphan*/  quotatype; } ;
struct dqblk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Q_GETQUOTA ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (struct quotafile*,struct dqblk*,int) ; 
 int FUNC2 (struct quotafile*,struct dqblk*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,struct dqblk*) ; 

int
FUNC4(struct quotafile *qf, struct dqblk *dqb, int id)
{
	int qcmd;

	if (qf->fd == -1) {
		qcmd = FUNC0(Q_GETQUOTA, qf->quotatype);
		return (FUNC3(qf->fsname, qcmd, id, dqb));
	}
	switch (qf->wordsize) {
	case 32:
		return (FUNC1(qf, dqb, id));
	case 64:
		return (FUNC2(qf, dqb, id));
	default:
		errno = EINVAL;
		return (-1);
	}
	/* not reached */
}