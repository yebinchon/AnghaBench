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
struct scsi_inquiry_data {int dummy; } ;
struct sbuf {int dummy; } ;
struct ctl_scsiio {int dummy; } ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SSS_FLAG_PRINT_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (struct ctl_scsiio*,struct scsi_inquiry_data*,struct sbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,char*,int,int /*<<< orphan*/ ) ; 

void
FUNC5(struct ctl_scsiio *ctsio,
		     struct scsi_inquiry_data *inq_data, FILE *ofile)
{
	struct sbuf sb;
	char str[512];

	if ((ctsio == NULL) || (ofile == NULL))
		return;

	FUNC4(&sb, str, sizeof(str), 0);

	FUNC0(ctsio, inq_data, &sb, SSS_FLAG_PRINT_COMMAND);

	FUNC3(&sb);

	FUNC1(ofile, "%s", FUNC2(&sb));
}