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
typedef  union ctl_io {int dummy; } ctl_io ;
struct scsi_format_header_short {int /*<<< orphan*/  defect_list_len; } ;
struct scsi_format_header_long {int /*<<< orphan*/  defect_list_len; } ;
struct scsi_format {int byte2; } ;
struct TYPE_2__ {int flags; } ;
struct ctl_scsiio {int kern_data_len; int kern_total_len; TYPE_1__ io_hdr; scalar_t__ kern_data_ptr; int /*<<< orphan*/  be_move_done; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; scalar_t__ cdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int CTL_FLAG_ALLOCATED ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  M_CTL ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int SF_FMTDATA ; 
 int SF_LONGLIST ; 
 int /*<<< orphan*/  ctl_config_move_done ; 
 int /*<<< orphan*/  FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC2 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_scsiio*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_scsiio*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(struct ctl_scsiio *ctsio)
{
	struct scsi_format *cdb;
	int length, defect_list_len;

	FUNC0(("ctl_format\n"));

	cdb = (struct scsi_format *)ctsio->cdb;

	length = 0;
	if (cdb->byte2 & SF_FMTDATA) {
		if (cdb->byte2 & SF_LONGLIST)
			length = sizeof(struct scsi_format_header_long);
		else
			length = sizeof(struct scsi_format_header_short);
	}

	if (((ctsio->io_hdr.flags & CTL_FLAG_ALLOCATED) == 0)
	 && (length > 0)) {
		ctsio->kern_data_ptr = FUNC6(length, M_CTL, M_WAITOK);
		ctsio->kern_data_len = length;
		ctsio->kern_total_len = length;
		ctsio->kern_rel_offset = 0;
		ctsio->kern_sg_entries = 0;
		ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
		ctsio->be_move_done = ctl_config_move_done;
		FUNC1((union ctl_io *)ctsio);

		return (CTL_RETVAL_COMPLETE);
	}

	defect_list_len = 0;

	if (cdb->byte2 & SF_FMTDATA) {
		if (cdb->byte2 & SF_LONGLIST) {
			struct scsi_format_header_long *header;

			header = (struct scsi_format_header_long *)
				ctsio->kern_data_ptr;

			defect_list_len = FUNC8(header->defect_list_len);
			if (defect_list_len != 0) {
				FUNC3(ctsio,
						      /*sks_valid*/ 1,
						      /*command*/ 0,
						      /*field*/ 2,
						      /*bit_valid*/ 0,
						      /*bit*/ 0);
				goto bailout;
			}
		} else {
			struct scsi_format_header_short *header;

			header = (struct scsi_format_header_short *)
				ctsio->kern_data_ptr;

			defect_list_len = FUNC7(header->defect_list_len);
			if (defect_list_len != 0) {
				FUNC3(ctsio,
						      /*sks_valid*/ 1,
						      /*command*/ 0,
						      /*field*/ 2,
						      /*bit_valid*/ 0,
						      /*bit*/ 0);
				goto bailout;
			}
		}
	}

	FUNC4(ctsio);
bailout:

	if (ctsio->io_hdr.flags & CTL_FLAG_ALLOCATED) {
		FUNC5(ctsio->kern_data_ptr, M_CTL);
		ctsio->io_hdr.flags &= ~CTL_FLAG_ALLOCATED;
	}

	FUNC2((union ctl_io *)ctsio);
	return (CTL_RETVAL_COMPLETE);
}