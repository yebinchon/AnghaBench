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
struct TYPE_2__ {int /*<<< orphan*/  flags; void* io_type; } ;
struct ctl_scsiio {int cdb_len; void** ext_data_ptr; int /*<<< orphan*/  sense_len; scalar_t__ ext_data_filled; scalar_t__ ext_sg_entries; void* ext_data_len; int /*<<< orphan*/  tag_type; scalar_t__ cdb; } ;
union ctl_io {TYPE_1__ io_hdr; struct ctl_scsiio scsiio; } ;
typedef  void* uint8_t ;
struct scsi_request_sense {void* length; void* control; void* byte2; int /*<<< orphan*/  opcode; } ;
typedef  void* int32_t ;
typedef  int /*<<< orphan*/  ctl_tag_type ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_FLAG_DATA_IN ; 
 void* CTL_IO_SCSI ; 
 int /*<<< orphan*/  REQUEST_SENSE ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (union ctl_io*) ; 

void
FUNC1(union ctl_io *io, uint8_t *data_ptr,
		       int32_t data_len, uint8_t byte2, ctl_tag_type tag_type,
		       uint8_t control)
{
	struct ctl_scsiio *ctsio;
	struct scsi_request_sense *cdb;

	FUNC0(io);

	io->io_hdr.io_type = CTL_IO_SCSI;
	ctsio = &io->scsiio;
	cdb = (struct scsi_request_sense *)ctsio->cdb;

	cdb->opcode = REQUEST_SENSE;
	cdb->byte2 = byte2;
	cdb->control = control;
	cdb->length = data_len;
	io->io_hdr.io_type = CTL_IO_SCSI;
	io->io_hdr.flags = CTL_FLAG_DATA_IN;
	ctsio->tag_type = tag_type;
	ctsio->cdb_len = sizeof(*cdb);
	ctsio->ext_data_ptr = data_ptr;
	ctsio->ext_data_len = data_len;
	ctsio->ext_sg_entries = 0;
	ctsio->ext_data_filled = 0;
	ctsio->sense_len = SSD_FULL_SIZE;
}