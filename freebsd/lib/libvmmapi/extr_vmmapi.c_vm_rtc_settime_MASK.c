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
typedef  int /*<<< orphan*/  time_t ;
struct vmctx {int /*<<< orphan*/  fd; } ;
struct vm_rtc_time {int /*<<< orphan*/  secs; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_RTC_SETTIME ; 
 int /*<<< orphan*/  FUNC0 (struct vm_rtc_time*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_rtc_time*) ; 

int
FUNC2(struct vmctx *ctx, time_t secs)
{
	struct vm_rtc_time rtctime;
	int error;

	FUNC0(&rtctime, sizeof(struct vm_rtc_time));
	rtctime.secs = secs;
	error = FUNC1(ctx->fd, VM_RTC_SETTIME, &rtctime);
	return (error);
}