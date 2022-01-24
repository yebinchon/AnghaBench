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
struct TYPE_2__ {int flags; } ;
union ctl_io {TYPE_1__ io_hdr; } ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int ctl_action ;

/* Variables and functions */
 int CTL_ACTION_ERROR ; 
 int CTL_FLAG_SERSEQ_DONE ; 
 int FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (union ctl_io*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (union ctl_io*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ctl_action
FUNC3(union ctl_io *io1, union ctl_io *io2, bool seq)
{
	uint64_t lba1, lba2;
	uint64_t len1, len2;
	int retval;

	if (FUNC2(io2, &lba2, &len2) != 0)
		return (CTL_ACTION_ERROR);

	retval = FUNC1(io1, lba2, len2);
	if (retval != CTL_ACTION_ERROR)
		return (retval);

	if (FUNC2(io1, &lba1, &len1) != 0)
		return (CTL_ACTION_ERROR);

	if (io1->io_hdr.flags & CTL_FLAG_SERSEQ_DONE)
		seq = FALSE;
	return (FUNC0(lba1, len1, lba2, len2, seq));
}