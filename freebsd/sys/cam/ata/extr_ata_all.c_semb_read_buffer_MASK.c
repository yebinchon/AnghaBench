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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct ccb_ataio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_SEP_ATTN ; 
 int /*<<< orphan*/  CAM_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (struct ccb_ataio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ccb_ataio*,int /*<<< orphan*/ ,void (*) (struct cam_periph*,union ccb*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 

void
FUNC3(struct ccb_ataio *ataio,
    u_int32_t retries, void (*cbfcnp)(struct cam_periph *, union ccb*),
    uint8_t tag_action, uint8_t page_code,
    uint8_t *data_ptr, uint16_t length, uint32_t timeout)
{

	length = FUNC2(length, 1020);
	length = (length + 3) & ~3;
	FUNC1(ataio,
		      retries,
		      cbfcnp,
		      /*flags*/CAM_DIR_IN,
		      tag_action,
		      data_ptr,
		      length,
		      timeout);
	FUNC0(ataio, ATA_SEP_ATTN,
	    page_code, 0x00, length / 4);
}