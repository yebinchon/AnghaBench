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
union ctl_io {int /*<<< orphan*/  scsiio; } ;
struct scsi_unmap_desc {int /*<<< orphan*/  length; int /*<<< orphan*/  lba; } ;
struct ctl_ptr_len_flags {int flags; int len; scalar_t__ ptr; } ;
struct ctl_be_lun {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (union ctl_io*) ; 
 struct ctl_be_lun* FUNC1 (union ctl_io*) ; 
 int SU_ANCHOR ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_be_lun*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(union ctl_io *io)
{
	struct ctl_be_lun *cbe_lun = FUNC1(io);
	struct ctl_ptr_len_flags *ptrlen = (struct ctl_ptr_len_flags *)FUNC0(io);
	struct scsi_unmap_desc *buf, *end;

	if ((ptrlen->flags & ~SU_ANCHOR) != 0) {
		FUNC4(&io->scsiio,
				      /*sks_valid*/ 0,
				      /*command*/ 0,
				      /*field*/ 0,
				      /*bit_valid*/ 0,
				      /*bit*/ 0);
		FUNC3(io);
		return;
	}

	buf = (struct scsi_unmap_desc *)ptrlen->ptr;
	end = buf + ptrlen->len / sizeof(*buf);
	for (; buf < end; buf++) {
		FUNC2(cbe_lun,
		    FUNC7(buf->lba), FUNC6(buf->length),
		    (ptrlen->flags & SU_ANCHOR) != 0);
	}

	FUNC5(&io->scsiio);
	FUNC3(io);
}