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

/* Variables and functions */
 int /*<<< orphan*/  SSS_FLAG_PRINT_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (struct ctl_scsiio*,struct scsi_inquiry_data*,struct sbuf*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char*,int,int /*<<< orphan*/ ) ; 

char *
FUNC4(struct ctl_scsiio *ctsio,
		      struct scsi_inquiry_data *inq_data, char *str,
		      int str_len)
{
	struct sbuf sb;

	FUNC3(&sb, str, str_len, 0);

	FUNC0(ctsio, inq_data, &sb, SSS_FLAG_PRINT_COMMAND);

	FUNC2(&sb);

	return(FUNC1(&sb));
}