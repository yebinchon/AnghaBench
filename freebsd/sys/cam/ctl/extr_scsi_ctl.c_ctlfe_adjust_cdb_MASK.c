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
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct scsi_rw_6 {int length; int /*<<< orphan*/  addr; } ;
struct scsi_rw_16 {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct scsi_rw_12 {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct scsi_rw_10 {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct ccb_accept_tio {int dummy; } ;

/* Variables and functions */
#define  READ_10 135 
#define  READ_12 134 
#define  READ_16 133 
#define  READ_6 132 
#define  WRITE_10 131 
#define  WRITE_12 130 
#define  WRITE_16 129 
#define  WRITE_6 128 
 int* FUNC0 (struct ccb_accept_tio*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct ccb_accept_tio *atio, uint32_t offset)
{
	uint64_t lba;
	uint32_t num_blocks, nbc;
	uint8_t *cmdbyt = FUNC0(atio);

	nbc = offset >> 9;	/* ASSUMING 512 BYTE BLOCKS */

	switch (cmdbyt[0]) {
	case READ_6:
	case WRITE_6:
	{
		struct scsi_rw_6 *cdb = (struct scsi_rw_6 *)cmdbyt;
		lba = FUNC2(cdb->addr);
		lba &= 0x1fffff;
		num_blocks = cdb->length;
		if (num_blocks == 0)
			num_blocks = 256;
		lba += nbc;
		num_blocks -= nbc;
		FUNC7(lba, cdb->addr);
		cdb->length = num_blocks;
		break;
	}
	case READ_10:
	case WRITE_10:
	{
		struct scsi_rw_10 *cdb = (struct scsi_rw_10 *)cmdbyt;
		lba = FUNC3(cdb->addr);
		num_blocks = FUNC1(cdb->length);
		lba += nbc;
		num_blocks -= nbc;
		FUNC8(lba, cdb->addr);
		FUNC6(num_blocks, cdb->length);
		break;
	}
	case READ_12:
	case WRITE_12:
	{
		struct scsi_rw_12 *cdb = (struct scsi_rw_12 *)cmdbyt;
		lba = FUNC3(cdb->addr);
		num_blocks = FUNC3(cdb->length);
		lba += nbc;
		num_blocks -= nbc;
		FUNC8(lba, cdb->addr);
		FUNC8(num_blocks, cdb->length);
		break;
	}
	case READ_16:
	case WRITE_16:
	{
		struct scsi_rw_16 *cdb = (struct scsi_rw_16 *)cmdbyt;
		lba = FUNC4(cdb->addr);
		num_blocks = FUNC3(cdb->length);
		lba += nbc;
		num_blocks -= nbc;
		FUNC5(lba, cdb->addr);
		FUNC8(num_blocks, cdb->length);
		break;
	}
	default:
		return -1;
	}
	return (0);
}