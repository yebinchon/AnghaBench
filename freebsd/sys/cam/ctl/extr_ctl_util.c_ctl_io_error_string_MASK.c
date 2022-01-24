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

/* Variables and functions */
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int /*<<< orphan*/  FUNC0 (union ctl_io*,struct scsi_inquiry_data*,struct sbuf*) ; 
 char* FUNC1 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,char*,int,int /*<<< orphan*/ ) ; 

char *
FUNC4(union ctl_io *io, struct scsi_inquiry_data *inq_data,
		    char *str, int str_len)
{
	struct sbuf sb;

	FUNC3(&sb, str, str_len, SBUF_FIXEDLEN);
	FUNC0(io, inq_data, &sb);
	FUNC2(&sb);
	return (FUNC1(&sb));
}