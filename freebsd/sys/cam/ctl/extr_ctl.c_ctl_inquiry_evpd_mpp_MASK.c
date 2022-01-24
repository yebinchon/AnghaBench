#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union ctl_io {int dummy; } ctl_io ;
struct scsi_vpd_mode_page_policy_descr {int dummy; } ;
struct scsi_vpd_mode_page_policy {int device; TYPE_2__* descr; int /*<<< orphan*/  page_length; int /*<<< orphan*/  page_code; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct ctl_scsiio {int /*<<< orphan*/  be_move_done; TYPE_3__ io_hdr; int /*<<< orphan*/  kern_data_len; int /*<<< orphan*/  kern_total_len; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; scalar_t__ kern_data_ptr; } ;
struct ctl_lun {TYPE_1__* be_lun; } ;
struct TYPE_5__ {int page_code; int subpage_code; int /*<<< orphan*/  policy; } ;
struct TYPE_4__ {int lun_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_FLAG_ALLOCATED ; 
 struct ctl_lun* FUNC0 (struct ctl_scsiio*) ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  M_CTL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int SID_QUAL_LU_CONNECTED ; 
 int SID_QUAL_LU_OFFLINE ; 
 int /*<<< orphan*/  SVPD_MODE_PAGE_POLICY ; 
 int /*<<< orphan*/  SVPD_MPP_SHARED ; 
 int T_DIRECT ; 
 int /*<<< orphan*/  ctl_config_move_done ; 
 int /*<<< orphan*/  FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_scsiio*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ctl_scsiio *ctsio, int alloc_len)
{
	struct ctl_lun *lun = FUNC0(ctsio);
	struct scsi_vpd_mode_page_policy *mpp_ptr;
	int data_len;

	data_len = sizeof(struct scsi_vpd_mode_page_policy) +
	    sizeof(struct scsi_vpd_mode_page_policy_descr);

	ctsio->kern_data_ptr = FUNC3(data_len, M_CTL, M_WAITOK | M_ZERO);
	mpp_ptr = (struct scsi_vpd_mode_page_policy *)ctsio->kern_data_ptr;
	ctsio->kern_rel_offset = 0;
	ctsio->kern_sg_entries = 0;
	ctsio->kern_data_len = FUNC4(data_len, alloc_len);
	ctsio->kern_total_len = ctsio->kern_data_len;

	/*
	 * The control device is always connected.  The disk device, on the
	 * other hand, may not be online all the time.
	 */
	if (lun != NULL)
		mpp_ptr->device = (SID_QUAL_LU_CONNECTED << 5) |
				     lun->be_lun->lun_type;
	else
		mpp_ptr->device = (SID_QUAL_LU_OFFLINE << 5) | T_DIRECT;
	mpp_ptr->page_code = SVPD_MODE_PAGE_POLICY;
	FUNC5(data_len - 4, mpp_ptr->page_length);
	mpp_ptr->descr[0].page_code = 0x3f;
	mpp_ptr->descr[0].subpage_code = 0xff;
	mpp_ptr->descr[0].policy = SVPD_MPP_SHARED;

	FUNC2(ctsio);
	ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
	ctsio->be_move_done = ctl_config_move_done;
	FUNC1((union ctl_io *)ctsio);
	return (CTL_RETVAL_COMPLETE);
}