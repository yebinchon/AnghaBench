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
struct scsi_mode_header_6 {size_t blk_desc_len; } ;
struct scsi_mode_header_10 {int /*<<< orphan*/  blk_desc_len; } ;
struct cam_device {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int MAX_DATA_SIZE ; 
 size_t FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_device*,int*,int /*<<< orphan*/ ,int,int,int,int,int,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct cam_device *device, int cdb_len, int llbaa, int pc,
	      int page, int subpage, int task_attr, int retries, int timeout)
{
	uint8_t data[MAX_DATA_SIZE];	/* Buffer to hold mode parameters. */
	uint8_t *desc;			/* Pointer to block descriptor. */
	size_t indx, len;

	FUNC1(device, &cdb_len, 0, llbaa, pc, page, subpage, task_attr,
	    retries, timeout, data, sizeof(data));

	if (cdb_len == 6) {
		struct scsi_mode_header_6 *mh =
		    (struct scsi_mode_header_6 *)data;
		desc = (uint8_t *)(mh + 1);
		len = mh->blk_desc_len;
	} else {
		struct scsi_mode_header_10 *mh =
		    (struct scsi_mode_header_10 *)data;
		desc = (uint8_t *)(mh + 1);
		len = FUNC4(mh->blk_desc_len);
	}
	len = FUNC0(len, sizeof(data) - (desc - data));

	/* Print the raw mode page data with newlines each 8 bytes. */
	for (indx = 0; indx < len; indx++) {
		FUNC2("%02x%c", desc[indx],
		    (((indx + 1) % 8) == 0) ? '\n' : ' ');
	}
	FUNC3('\n');
}