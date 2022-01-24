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
struct TYPE_4__ {int /*<<< orphan*/  sense_len; scalar_t__ ext_data_filled; scalar_t__ ext_sg_entries; int /*<<< orphan*/  ext_data_len; int /*<<< orphan*/ * ext_data_ptr; int /*<<< orphan*/  tag_type; scalar_t__ cdb; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; void* io_type; } ;
union ctl_io {TYPE_2__ scsiio; TYPE_1__ io_hdr; } ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct scsi_read_capacity_16 {int /*<<< orphan*/  control; int /*<<< orphan*/  alloc_len; int /*<<< orphan*/  addr; int /*<<< orphan*/  reladr; int /*<<< orphan*/  service_action; int /*<<< orphan*/  opcode; } ;
typedef  int /*<<< orphan*/  ctl_tag_type ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_FLAG_DATA_IN ; 
 void* CTL_IO_SCSI ; 
 int /*<<< orphan*/  SERVICE_ACTION_IN ; 
 int /*<<< orphan*/  SRC16_PMI ; 
 int /*<<< orphan*/  SRC16_RELADR ; 
 int /*<<< orphan*/  SRC16_SERVICE_ACTION ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(union ctl_io *io, uint8_t *data_ptr,
			  uint32_t data_len, uint64_t addr, int reladr,
			  int pmi, ctl_tag_type tag_type, uint8_t control)
{
	struct scsi_read_capacity_16 *cdb;

	FUNC0(io);

	io->io_hdr.io_type = CTL_IO_SCSI;
	cdb = (struct scsi_read_capacity_16 *)io->scsiio.cdb;

	cdb->opcode = SERVICE_ACTION_IN;
	cdb->service_action = SRC16_SERVICE_ACTION;
	if (reladr)
		cdb->reladr |= SRC16_RELADR;
	if (pmi)
		cdb->reladr |= SRC16_PMI;
	FUNC1(addr, cdb->addr);
	FUNC2(data_len, cdb->alloc_len);
	cdb->control = control;

	io->io_hdr.io_type = CTL_IO_SCSI;
	io->io_hdr.flags = CTL_FLAG_DATA_IN;
	io->scsiio.tag_type = tag_type;
	io->scsiio.ext_data_ptr = data_ptr;
	io->scsiio.ext_data_len = data_len;
	io->scsiio.ext_sg_entries = 0;
	io->scsiio.ext_data_filled = 0;
	io->scsiio.sense_len = SSD_FULL_SIZE;
}