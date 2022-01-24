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
typedef  scalar_t__ uint64_t ;
struct ctl_scsiio {int dummy; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  SSD_ELEM_INFO ; 
 int /*<<< orphan*/  SSD_ELEM_NONE ; 
 int /*<<< orphan*/  SSD_ELEM_SKIP ; 
 int /*<<< orphan*/  SSD_KEY_ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (struct ctl_scsiio*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

void
FUNC2(struct ctl_scsiio *ctsio, uint64_t lba)
{
	uint8_t	info[8];

	FUNC1(lba, info);

	/* "Logical block address out of range" */
	FUNC0(ctsio,
		      /*current_error*/ 1,
		      /*sense_key*/ SSD_KEY_ILLEGAL_REQUEST,
		      /*asc*/ 0x21,
		      /*ascq*/ 0x00,
		      /*type*/ (lba != 0) ? SSD_ELEM_INFO : SSD_ELEM_SKIP,
		      /*size*/ sizeof(info), /*data*/ &info,
		      SSD_ELEM_NONE);
}