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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ time_t ;
struct rtcdev {int reg_c; } ;
struct vrtc {int addr; struct rtcdev rtcdev; } ;
struct vm {int dummy; } ;
typedef  int /*<<< orphan*/  sbintime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int RTC_CENTURY ; 
 int /*<<< orphan*/  FUNC1 (struct vm*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vm*,int,char*,int,int) ; 
 scalar_t__ VRTC_BROKEN_TIME ; 
 int /*<<< orphan*/  FUNC3 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct vrtc*) ; 
 scalar_t__ rtc_flag_broken_time ; 
 int /*<<< orphan*/  FUNC5 (struct vrtc*) ; 
 scalar_t__ FUNC6 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,struct vrtc*,int /*<<< orphan*/ ) ; 
 struct vrtc* FUNC9 (struct vm*) ; 
 scalar_t__ FUNC10 (struct vrtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct vrtc*,int) ; 
 int FUNC12 (struct vrtc*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct vrtc*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct vrtc*,scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC15(struct vm *vm, int vcpuid, bool in, int port, int bytes,
    uint32_t *val)
{
	struct vrtc *vrtc;
	struct rtcdev *rtc;
	sbintime_t basetime;
	time_t curtime;
	int error, offset;

	vrtc = FUNC9(vm);
	rtc = &vrtc->rtcdev;

	if (bytes != 1)
		return (-1);

	FUNC3(vrtc);
	offset = vrtc->addr;
	if (offset >= sizeof(struct rtcdev)) {
		FUNC4(vrtc);
		return (-1);
	}

	error = 0;
	curtime = FUNC10(vrtc, &basetime);
	FUNC14(vrtc, curtime, basetime);

	/*
	 * Update RTC date/time fields if necessary.
	 *
	 * This is not just for reads of the RTC. The side-effect of writing
	 * the century byte requires other RTC date/time fields (e.g. sec)
	 * to be updated here.
	 */
	if (offset < 10 || offset == RTC_CENTURY)
		FUNC8(curtime, vrtc, 0);

	if (in) {
		if (offset == 12) {
			/*
			 * XXX
			 * reg_c interrupt flags are updated only if the
			 * corresponding interrupt enable bit in reg_b is set.
			 */
			*val = vrtc->rtcdev.reg_c;
			FUNC13(vrtc, 0);
		} else {
			*val = *((uint8_t *)rtc + offset);
		}
		FUNC2(vm, vcpuid, "Read value %#x from RTC offset %#x",
		    *val, offset);
	} else {
		switch (offset) {
		case 10:
			FUNC1(vm, vcpuid, "RTC reg_a set to %#x", *val);
			FUNC11(vrtc, *val);
			break;
		case 11:
			FUNC1(vm, vcpuid, "RTC reg_b set to %#x", *val);
			error = FUNC12(vrtc, *val);
			break;
		case 12:
			FUNC1(vm, vcpuid, "RTC reg_c set to %#x (ignored)",
			    *val);
			break;
		case 13:
			FUNC1(vm, vcpuid, "RTC reg_d set to %#x (ignored)",
			    *val);
			break;
		case 0:
			/*
			 * High order bit of 'seconds' is readonly.
			 */
			*val &= 0x7f;
			/* FALLTHRU */
		default:
			FUNC2(vm, vcpuid, "RTC offset %#x set to %#x",
			    offset, *val);
			*((uint8_t *)rtc + offset) = *val;
			break;
		}

		/*
		 * XXX some guests (e.g. OpenBSD) write the century byte
		 * outside of RTCSB_HALT so re-calculate the RTC date/time.
		 */
		if (offset == RTC_CENTURY && !FUNC5(vrtc)) {
			curtime = FUNC6(vrtc);
			error = FUNC14(vrtc, curtime, FUNC7());
			FUNC0(!error, ("vrtc_time_update error %d", error));
			if (curtime == VRTC_BROKEN_TIME && rtc_flag_broken_time)
				error = -1;
		}
	}
	FUNC4(vrtc);
	return (error);
}