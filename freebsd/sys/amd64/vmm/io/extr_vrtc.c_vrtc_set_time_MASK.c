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
struct vrtc {int /*<<< orphan*/  vm; } ;
struct vm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct vrtc* FUNC5 (struct vm*) ; 
 int FUNC6 (struct vrtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(struct vm *vm, time_t secs)
{
	struct vrtc *vrtc;
	int error;

	vrtc = FUNC5(vm);
	FUNC2(vrtc);
	error = FUNC6(vrtc, secs, FUNC4());
	FUNC3(vrtc);

	if (error) {
		FUNC1(vrtc->vm, "Error %d setting RTC time to %#lx", error,
		    secs);
	} else {
		FUNC0(vrtc->vm, "RTC time set to %#lx", secs);
	}

	return (error);
}