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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct scsi_mode_page_header_sp {int /*<<< orphan*/  page_length; } ;
struct scsi_mode_page_header {int page_code; size_t page_length; } ;
struct scsi_mode_header_6 {int dummy; } ;
struct scsi_mode_header_10 {int dummy; } ;
struct cam_device {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int MAX_DATA_SIZE ; 
 size_t FUNC0 (size_t,int) ; 
 int SMPH_SPF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  editentry_create ; 
 int /*<<< orphan*/  editentry_update ; 
 int /*<<< orphan*/  editlist ; 
 struct scsi_mode_page_header* FUNC3 (struct scsi_mode_header_10*) ; 
 struct scsi_mode_page_header* FUNC4 (struct scsi_mode_header_6*) ; 
 int /*<<< orphan*/  format ; 
 int /*<<< orphan*/  FUNC5 (struct cam_device*,int*,int,int /*<<< orphan*/ ,int,int,int,int,int,int,int /*<<< orphan*/ *,int) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct cam_device *device, int cdb_len, int dbd, int pc,
    int page, int subpage, int task_attr, int retries, int timeout)
{
	u_int8_t data[MAX_DATA_SIZE];	/* Buffer to hold mode parameters. */
	u_int8_t *mode_pars;		/* Pointer to modepage params. */
	struct scsi_mode_page_header *mph;
	struct scsi_mode_page_header_sp *mphsp;
	size_t len;

	FUNC1(&editlist);

	/* Fetch changeable values; use to build initial editlist. */
	FUNC5(device, &cdb_len, dbd, 0, 1, page, subpage, task_attr,
		   retries, timeout, data, sizeof(data));

	if (cdb_len == 6) {
		struct scsi_mode_header_6 *mh =
		    (struct scsi_mode_header_6 *)data;
		mph = FUNC4(mh);
	} else {
		struct scsi_mode_header_10 *mh =
		    (struct scsi_mode_header_10 *)data;
		mph = FUNC3(mh);
	}
	if ((mph->page_code & SMPH_SPF) == 0) {
		mode_pars = (uint8_t *)(mph + 1);
		len = mph->page_length;
	} else {
		mphsp = (struct scsi_mode_page_header_sp *)mph;
		mode_pars = (uint8_t *)(mphsp + 1);
		len = FUNC6(mphsp->page_length);
	}
	len = FUNC0(len, sizeof(data) - (mode_pars - data));

	/* Decode the value data, creating edit_entries for each value. */
	FUNC2(mode_pars, len, format, editentry_create, 0);

	/* Fetch the current/saved values; use to set editentry values. */
	FUNC5(device, &cdb_len, dbd, 0, pc, page, subpage, task_attr,
	    retries, timeout, data, sizeof(data));
	FUNC2(mode_pars, len, format, editentry_update, 0);
}