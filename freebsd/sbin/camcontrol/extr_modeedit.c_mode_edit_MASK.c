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
struct cam_device {int dummy; } ;

/* Variables and functions */
 char* DEFAULT_SCSI_MODE_DB ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ESRCH ; 
 int /*<<< orphan*/  EX_OSFILE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 scalar_t__ PAGE_CTRL_SHIFT ; 
 scalar_t__ SMS_PAGE_CTRL_CURRENT ; 
 scalar_t__ SMS_PAGE_CTRL_SAVED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  editlist ; 
 int /*<<< orphan*/  FUNC1 (struct cam_device*,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_device*,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_device*,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_device*,int,int,int,int,int,int,int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cam_device*,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cam_device*,int,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 

void
FUNC15(struct cam_device *device, int cdb_len, int desc, int dbd, int llbaa,
    int pc, int page, int subpage, int edit, int binary, int task_attr,
    int retry_count, int timeout)
{
	const char *pagedb_path;	/* Path to modepage database. */

	if (binary) {
		if (edit)
			FUNC5(EX_USAGE, "cannot edit in binary mode.");
	} else if (desc) {
		FUNC2(device, cdb_len, llbaa, pc, page,
		    subpage, task_attr, retry_count, timeout);
	} else {
		if ((pagedb_path = FUNC7("SCSI_MODES")) == NULL)
			pagedb_path = DEFAULT_SCSI_MODE_DB;

		if (FUNC8(pagedb_path, page, subpage) != 0 &&
		    (edit || verbose)) {
			if (errno == ENOENT) {
				/* Modepage database file not found. */
				FUNC13("cannot open modepage database \"%s\"",
				    pagedb_path);
			} else if (errno == ESRCH) {
				/* Modepage entry not found in database. */
				FUNC14("modepage 0x%02x,0x%02x not found in "
				    "database \"%s\"", page, subpage,
				    pagedb_path);
			}
			/* We can recover in display mode, otherwise we exit. */
			if (!edit) {
				FUNC14("reverting to binary display only");
				binary = 1;
			} else
				FUNC6(EX_OSFILE);
		}

		FUNC1(device, cdb_len, dbd, pc, page, subpage,
		    task_attr, retry_count, timeout);
	}

	if (edit) {
		if (pc << PAGE_CTRL_SHIFT != SMS_PAGE_CTRL_CURRENT &&
		    pc << PAGE_CTRL_SHIFT != SMS_PAGE_CTRL_SAVED)
			FUNC5(EX_USAGE, "it only makes sense to edit page 0 "
			    "(current) or page 3 (saved values)");
		FUNC11();
		if (desc) {
			FUNC4(device, cdb_len, llbaa, pc, page,
			    subpage, task_attr, retry_count, timeout);
		} else {
			FUNC3(device, cdb_len, dbd, pc, page, subpage,
			    task_attr, retry_count, timeout);
		}
	} else if (binary || FUNC0(&editlist)) {
		/* Display without formatting information. */
		if (desc) {
			FUNC10(device, cdb_len, llbaa, pc, page,
			    subpage, task_attr, retry_count, timeout);
		} else {
			FUNC9(device, cdb_len, dbd, pc, page, subpage,
			    task_attr, retry_count, timeout);
		}
	} else {
		/* Display with format. */
		FUNC12(stdout, 0);
	}
}