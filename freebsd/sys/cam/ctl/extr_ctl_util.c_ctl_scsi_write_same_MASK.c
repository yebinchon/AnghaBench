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
struct ctl_scsiio {int cdb_len; void** ext_data_ptr; int /*<<< orphan*/  sense_len; scalar_t__ ext_data_filled; scalar_t__ ext_sg_entries; int /*<<< orphan*/  ext_data_len; int /*<<< orphan*/  tag_type; scalar_t__ cdb; } ;
union ctl_io {TYPE_1__ io_hdr; struct ctl_scsiio scsiio; } ;
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct scsi_write_same_16 {void* control; scalar_t__ group; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; void* byte2; int /*<<< orphan*/  opcode; } ;
typedef  int /*<<< orphan*/  ctl_tag_type ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_FLAG_DATA_OUT ; 
 void* CTL_IO_SCSI ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int /*<<< orphan*/  WRITE_SAME_16 ; 
 int /*<<< orphan*/  FUNC0 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(union ctl_io *io, uint8_t *data_ptr, uint32_t data_len,
		    uint8_t byte2, uint64_t lba, uint32_t num_blocks,
		    ctl_tag_type tag_type, uint8_t control)
{
	struct ctl_scsiio *ctsio;
	struct scsi_write_same_16 *cdb;

	FUNC0(io);

	io->io_hdr.io_type = CTL_IO_SCSI;
	ctsio = &io->scsiio;
	ctsio->cdb_len = sizeof(*cdb);
	cdb = (struct scsi_write_same_16 *)ctsio->cdb;
	cdb->opcode = WRITE_SAME_16;
	cdb->byte2 = byte2;
	FUNC1(lba, cdb->addr);
	FUNC2(num_blocks, cdb->length);
	cdb->group = 0;
	cdb->control = control;

	io->io_hdr.io_type = CTL_IO_SCSI;
	io->io_hdr.flags = CTL_FLAG_DATA_OUT;
	ctsio->tag_type = tag_type;
	ctsio->ext_data_ptr = data_ptr;
	ctsio->ext_data_len = data_len;
	ctsio->ext_sg_entries = 0;
	ctsio->ext_data_filled = 0;
	ctsio->sense_len = SSD_FULL_SIZE;
}