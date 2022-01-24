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
typedef  int uint32_t ;
struct vrtc {int addr; } ;
struct vm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vrtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vrtc*) ; 
 struct vrtc* FUNC2 (struct vm*) ; 

int
FUNC3(struct vm *vm, int vcpuid, bool in, int port, int bytes,
    uint32_t *val)
{
	struct vrtc *vrtc;

	vrtc = FUNC2(vm);

	if (bytes != 1)
		return (-1);

	if (in) {
		*val = 0xff;
		return (0);
	}

	FUNC0(vrtc);
	vrtc->addr = *val & 0x7f;
	FUNC1(vrtc);

	return (0);
}