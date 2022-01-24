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
typedef  scalar_t__ time_t ;
struct rtcdev {int reg_a; int /*<<< orphan*/  reg_d; scalar_t__ reg_c; int /*<<< orphan*/  reg_b; } ;
struct vrtc {int /*<<< orphan*/  base_rtctime; int /*<<< orphan*/  addr; struct rtcdev rtcdev; int /*<<< orphan*/  callout; int /*<<< orphan*/  mtx; struct vm* vm; } ;
struct vm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_VRTC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  RTCSB_24HR ; 
 int /*<<< orphan*/  RTCSD_PWR ; 
 int /*<<< orphan*/  RTC_STATUSD ; 
 int /*<<< orphan*/  VRTC_BROKEN_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct vrtc* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct vrtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vrtc*,scalar_t__,int /*<<< orphan*/ ) ; 

struct vrtc *
FUNC8(struct vm *vm)
{
	struct vrtc *vrtc;
	struct rtcdev *rtc;
	time_t curtime;

	vrtc = FUNC3(sizeof(struct vrtc), M_VRTC, M_WAITOK | M_ZERO);
	vrtc->vm = vm;
	FUNC4(&vrtc->mtx, "vrtc lock", NULL, MTX_DEF);
	FUNC2(&vrtc->callout, 1);

	/* Allow dividers to keep time but disable everything else */
	rtc = &vrtc->rtcdev;
	rtc->reg_a = 0x20;
	rtc->reg_b = RTCSB_24HR;
	rtc->reg_c = 0;
	rtc->reg_d = RTCSD_PWR;

	/* Reset the index register to a safe value. */
	vrtc->addr = RTC_STATUSD;

	/*
	 * Initialize RTC time to 00:00:00 Jan 1, 1970.
	 */
	curtime = 0;

	FUNC0(vrtc);
	vrtc->base_rtctime = VRTC_BROKEN_TIME;
	FUNC7(vrtc, curtime, FUNC5());
	FUNC6(curtime, vrtc, 0);
	FUNC1(vrtc);

	return (vrtc);
}