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
typedef  int /*<<< orphan*/  time_t ;
struct vrtc {int /*<<< orphan*/  rtcdev; } ;
struct vm {int dummy; } ;
struct rtcdev {int dummy; } ;
typedef  int /*<<< orphan*/  sbintime_t ;

/* Variables and functions */
 int EINVAL ; 
 int RTC_CENTURY ; 
 int /*<<< orphan*/  FUNC0 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vrtc*,int /*<<< orphan*/ ) ; 
 struct vrtc* FUNC3 (struct vm*) ; 
 int /*<<< orphan*/  FUNC4 (struct vrtc*,int /*<<< orphan*/ *) ; 

int
FUNC5(struct vm *vm, int offset, uint8_t *retval)
{
	struct vrtc *vrtc;
	sbintime_t basetime;
	time_t curtime;
	uint8_t *ptr;

	/*
	 * Allow all offsets in the RTC to be read.
	 */
	if (offset < 0 || offset >= sizeof(struct rtcdev))
		return (EINVAL);

	vrtc = FUNC3(vm);
	FUNC0(vrtc);

	/*
	 * Update RTC date/time fields if necessary.
	 */
	if (offset < 10 || offset == RTC_CENTURY) {
		curtime = FUNC4(vrtc, &basetime);
		FUNC2(curtime, vrtc, 0);
	}

	ptr = (uint8_t *)(&vrtc->rtcdev);
	*retval = ptr[offset];

	FUNC1(vrtc);
	return (0);
}