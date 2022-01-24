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
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (union ctl_io*,struct scsi_inquiry_data*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 

void
FUNC2(union ctl_io *io, struct scsi_inquiry_data *inq_data,
		   FILE *ofile)
{
	char str[512];

	FUNC1(ofile, "%s", FUNC0(io, inq_data, str,
		sizeof(str)));
}