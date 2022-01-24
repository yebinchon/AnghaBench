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
struct dqhdr64 {int dummy; } ;
struct dqblk64 {int /*<<< orphan*/  dqb_itime; int /*<<< orphan*/  dqb_btime; int /*<<< orphan*/  dqb_curinodes; int /*<<< orphan*/  dqb_isoftlimit; int /*<<< orphan*/  dqb_ihardlimit; int /*<<< orphan*/  dqb_curblocks; int /*<<< orphan*/  dqb_bsoftlimit; int /*<<< orphan*/  dqb_bhardlimit; } ;
struct dqblk {void* dqb_itime; void* dqb_btime; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; void* dqb_curblocks; void* dqb_bsoftlimit; void* dqb_bhardlimit; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  dqb64 ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dqblk*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct dqblk64*,int) ; 

__attribute__((used)) static int
FUNC4(struct quotafile *qf, struct dqblk *dqb, int id)
{
	struct dqblk64 dqb64;
	off_t off;

	off = sizeof(struct dqhdr64) + id * sizeof(struct dqblk64);
	if (FUNC1(qf->fd, off, SEEK_SET) == -1)
		return (-1);
	switch (FUNC3(qf->fd, &dqb64, sizeof(dqb64))) {
	case 0:
		FUNC2(dqb, 0, sizeof(*dqb));
		return (0);
	case sizeof(dqb64):
		dqb->dqb_bhardlimit = FUNC0(dqb64.dqb_bhardlimit);
		dqb->dqb_bsoftlimit = FUNC0(dqb64.dqb_bsoftlimit);
		dqb->dqb_curblocks = FUNC0(dqb64.dqb_curblocks);
		dqb->dqb_ihardlimit = FUNC0(dqb64.dqb_ihardlimit);
		dqb->dqb_isoftlimit = FUNC0(dqb64.dqb_isoftlimit);
		dqb->dqb_curinodes = FUNC0(dqb64.dqb_curinodes);
		dqb->dqb_btime = FUNC0(dqb64.dqb_btime);
		dqb->dqb_itime = FUNC0(dqb64.dqb_itime);
		return (0);
	default:
		return (-1);
	}
}