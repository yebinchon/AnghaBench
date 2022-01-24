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
struct quotafile {int /*<<< orphan*/  fd; } ;
struct dqblk32 {void* dqb_itime; void* dqb_btime; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_curblocks; void* dqb_bsoftlimit; void* dqb_bhardlimit; } ;
struct dqblk {int /*<<< orphan*/  dqb_itime; int /*<<< orphan*/  dqb_btime; int /*<<< orphan*/  dqb_curinodes; int /*<<< orphan*/  dqb_isoftlimit; int /*<<< orphan*/  dqb_ihardlimit; int /*<<< orphan*/  dqb_curblocks; int /*<<< orphan*/  dqb_bsoftlimit; int /*<<< orphan*/  dqb_bhardlimit; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  dqb32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct dqblk32*,int) ; 

__attribute__((used)) static int
FUNC3(struct quotafile *qf, const struct dqblk *dqb, int id)
{
	struct dqblk32 dqb32;
	off_t off;

	dqb32.dqb_bhardlimit = FUNC0(dqb->dqb_bhardlimit);
	dqb32.dqb_bsoftlimit = FUNC0(dqb->dqb_bsoftlimit);
	dqb32.dqb_curblocks = FUNC0(dqb->dqb_curblocks);
	dqb32.dqb_ihardlimit = FUNC0(dqb->dqb_ihardlimit);
	dqb32.dqb_isoftlimit = FUNC0(dqb->dqb_isoftlimit);
	dqb32.dqb_curinodes = FUNC0(dqb->dqb_curinodes);
	dqb32.dqb_btime = FUNC0(dqb->dqb_btime);
	dqb32.dqb_itime = FUNC0(dqb->dqb_itime);

	off = id * sizeof(struct dqblk32);
	if (FUNC1(qf->fd, off, SEEK_SET) == -1)
		return (-1);
	if (FUNC2(qf->fd, &dqb32, sizeof(dqb32)) == sizeof(dqb32))
		return (0);
	return (-1);
}