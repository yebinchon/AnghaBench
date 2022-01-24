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
typedef  union ctl_io {int dummy; } ctl_io ;
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;
struct ctl_scsiio {int /*<<< orphan*/  cdb_len; int /*<<< orphan*/  cdb; int /*<<< orphan*/  sense_len; int /*<<< orphan*/  sense_data; } ;
typedef  int scsi_sense_string_flags ;
typedef  int /*<<< orphan*/  path_str ;

/* Variables and functions */
 int SSS_FLAG_PRINT_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (struct ctl_scsiio*,struct scsi_inquiry_data*,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (union ctl_io*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sbuf*,char*,struct scsi_inquiry_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct ctl_scsiio *ctsio,
		    struct scsi_inquiry_data *inq_data, struct sbuf *sb,
		    scsi_sense_string_flags flags)
{
	char	  path_str[64];

	if ((ctsio == NULL) || (sb == NULL))
		return(-1);

	FUNC1((union ctl_io *)ctsio, path_str, sizeof(path_str));

	if (flags & SSS_FLAG_PRINT_COMMAND) {

		FUNC2(sb, path_str);

		FUNC0(ctsio, inq_data, sb);

		FUNC3(sb, "\n");
	}

	FUNC4(&ctsio->sense_data, ctsio->sense_len, sb,
			     path_str, inq_data, ctsio->cdb, ctsio->cdb_len);

	return(0);
}