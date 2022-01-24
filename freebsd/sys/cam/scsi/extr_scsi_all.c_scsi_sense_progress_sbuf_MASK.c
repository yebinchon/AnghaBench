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
typedef  int /*<<< orphan*/  u_int ;
struct scsi_sense_progress {int /*<<< orphan*/  add_sense_code_qual; int /*<<< orphan*/  add_sense_code; int /*<<< orphan*/  progress; int /*<<< orphan*/  sense_key; } ;
struct scsi_sense_desc_header {int dummy; } ;
struct scsi_sense_data {int dummy; } ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_inquiry_data*,char const**,char const**) ; 

void
FUNC5(struct sbuf *sb, struct scsi_sense_data *sense,
			 u_int sense_len, uint8_t *cdb, int cdb_len,
			 struct scsi_inquiry_data *inq_data,
			 struct scsi_sense_desc_header *header)
{
	struct scsi_sense_progress *progress;
	const char *sense_key_desc;
	const char *asc_desc;
	int progress_val;

	progress = (struct scsi_sense_progress *)header;

	/*
	 * Get descriptions for the sense key, ASC, and ASCQ in the
	 * progress descriptor.  These could be different than the values
	 * in the overall sense data.
	 */
	FUNC4(progress->sense_key, progress->add_sense_code,
			progress->add_sense_code_qual, inq_data,
			&sense_key_desc, &asc_desc);

	progress_val = FUNC2(progress->progress);

	/*
	 * The progress indicator is for the operation described by the
	 * sense key, ASC, and ASCQ in the descriptor.
	 */
	FUNC0(sb, sense_key_desc);
	FUNC1(sb, " asc:%x,%x (%s): ", progress->add_sense_code, 
		    progress->add_sense_code_qual, asc_desc);
	FUNC3(sb, progress_val);
}