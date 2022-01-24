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

/* Variables and functions */
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*,struct scsi_inquiry_data*) ; 

void
FUNC4(struct scsi_inquiry_data *inq_data)
{
	struct sbuf	sb;
	char		buffer[84];

	FUNC1(&sb, buffer, 84, SBUF_FIXEDLEN);
	FUNC3(&sb, inq_data);
	FUNC0(&sb);
	FUNC2(&sb);
}