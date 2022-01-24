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
struct ctl_scsiio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSD_ELEM_NONE ; 
 int /*<<< orphan*/  SSD_KEY_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ctl_scsiio*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

void
FUNC1(struct ctl_scsiio *ctsio)
{
	/* "Logical unit not ready, target port in standby state" */
	FUNC0(ctsio,
		      /*current_error*/ 1,
		      /*sense_key*/ SSD_KEY_NOT_READY,
		      /*asc*/ 0x04,
		      /*ascq*/ 0x0b,
		      SSD_ELEM_NONE);
}