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
typedef  union ctl_io {int dummy; } ctl_io ;
typedef  int uint32_t ;
struct scsi_read_toc_type01_descr {int addr_ctl; int track_number; int /*<<< orphan*/  track_start; } ;
struct scsi_read_toc_hdr {int first; int last; int /*<<< orphan*/  data_length; } ;
struct scsi_read_toc {int byte2; int format; int /*<<< orphan*/  data_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct ctl_scsiio {int /*<<< orphan*/  be_move_done; TYPE_2__ io_hdr; scalar_t__ kern_data_ptr; int /*<<< orphan*/  kern_data_len; int /*<<< orphan*/  kern_total_len; scalar_t__ kern_rel_offset; scalar_t__ kern_sg_entries; scalar_t__ cdb; } ;
struct ctl_lun {TYPE_1__* be_lun; } ;
struct TYPE_3__ {scalar_t__ maxlba; } ;

/* Variables and functions */
 int CD_MSF ; 
 int /*<<< orphan*/  CTL_FLAG_ALLOCATED ; 
 struct ctl_lun* FUNC0 (struct ctl_scsiio*) ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  M_CTL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  ctl_config_move_done ; 
 int /*<<< orphan*/  FUNC1 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_scsiio*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC9(struct ctl_scsiio *ctsio)
{
	struct ctl_lun *lun = FUNC0(ctsio);
	struct scsi_read_toc_hdr *hdr;
	struct scsi_read_toc_type01_descr *descr;
	struct scsi_read_toc *cdb;
	uint32_t alloc_len, data_len;
	int format, msf;

	cdb = (struct scsi_read_toc *)ctsio->cdb;
	msf = (cdb->byte2 & CD_MSF) != 0;
	format = cdb->format;
	alloc_len = FUNC6(cdb->data_len);

	data_len = sizeof(struct scsi_read_toc_hdr);
	if (format == 0)
		data_len += 2 * sizeof(struct scsi_read_toc_type01_descr);
	else
		data_len += sizeof(struct scsi_read_toc_type01_descr);
	ctsio->kern_data_ptr = FUNC4(data_len, M_CTL, M_WAITOK | M_ZERO);
	ctsio->kern_sg_entries = 0;
	ctsio->kern_rel_offset = 0;
	ctsio->kern_data_len = FUNC5(data_len, alloc_len);
	ctsio->kern_total_len = ctsio->kern_data_len;

	hdr = (struct scsi_read_toc_hdr *)ctsio->kern_data_ptr;
	if (format == 0) {
		FUNC7(0x12, hdr->data_length);
		hdr->first = 1;
		hdr->last = 1;
		descr = (struct scsi_read_toc_type01_descr *)(hdr + 1);
		descr->addr_ctl = 0x14;
		descr->track_number = 1;
		if (msf)
			FUNC3(0, descr->track_start);
		else
			FUNC8(0, descr->track_start);
		descr++;
		descr->addr_ctl = 0x14;
		descr->track_number = 0xaa;
		if (msf)
			FUNC3(lun->be_lun->maxlba+1, descr->track_start);
		else
			FUNC8(lun->be_lun->maxlba+1, descr->track_start);
	} else {
		FUNC7(0x0a, hdr->data_length);
		hdr->first = 1;
		hdr->last = 1;
		descr = (struct scsi_read_toc_type01_descr *)(hdr + 1);
		descr->addr_ctl = 0x14;
		descr->track_number = 1;
		if (msf)
			FUNC3(0, descr->track_start);
		else
			FUNC8(0, descr->track_start);
	}

	FUNC2(ctsio);
	ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
	ctsio->be_move_done = ctl_config_move_done;
	FUNC1((union ctl_io *)ctsio);
	return (CTL_RETVAL_COMPLETE);
}