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
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
union ctl_io {TYPE_2__ io_hdr; } ;
struct ctl_lun {int /*<<< orphan*/  lun_lock; TYPE_1__* be_lun; } ;
struct TYPE_3__ {scalar_t__ serseq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_FLAG_SERSEQ_DONE ; 
 struct ctl_lun* FUNC0 (union ctl_io*) ; 
 scalar_t__ CTL_LUN_SERSEQ_OFF ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_lun*,union ctl_io*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(union ctl_io *io)
{
	struct ctl_lun *lun = FUNC0(io);;

	if (lun->be_lun == NULL ||
	    lun->be_lun->serseq == CTL_LUN_SERSEQ_OFF)
		return;
	FUNC2(&lun->lun_lock);
	io->io_hdr.flags |= CTL_FLAG_SERSEQ_DONE;
	FUNC1(lun, io, FALSE);
	FUNC3(&lun->lun_lock);
}