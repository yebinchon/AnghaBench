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
struct vmctx {int /*<<< orphan*/  fd; } ;
struct vm_rtc_data {int offset; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_RTC_READ ; 
 int /*<<< orphan*/  FUNC0 (struct vm_rtc_data*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_rtc_data*) ; 

int
FUNC2(struct vmctx *ctx, int offset, uint8_t *retval)
{
	struct vm_rtc_data rtcdata;
	int error;

	FUNC0(&rtcdata, sizeof(struct vm_rtc_data));
	rtcdata.offset = offset;
	error = FUNC1(ctx->fd, VM_RTC_READ, &rtcdata);
	if (error == 0)
		*retval = rtcdata.value;
	return (error);
}