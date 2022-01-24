#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct vhpet {int config; int isr; TYPE_1__* timer; int /*<<< orphan*/  vm; } ;
struct TYPE_2__ {int cap_config; int compval; int msireg; } ;

/* Variables and functions */
 int HPET_CAPABILITIES ; 
 int HPET_CONFIG ; 
 int HPET_ISR ; 
 int HPET_MAIN_COUNTER ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int VHPET_BASE ; 
 int /*<<< orphan*/  FUNC4 (struct vhpet*) ; 
 int VHPET_NUM_TIMERS ; 
 int /*<<< orphan*/  FUNC5 (struct vhpet*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC7 () ; 
 int FUNC8 (struct vhpet*,int /*<<< orphan*/ *) ; 
 struct vhpet* FUNC9 (void*) ; 

int
FUNC10(void *vm, int vcpuid, uint64_t gpa, uint64_t *rval, int size,
    void *arg)
{
	int i, offset;
	struct vhpet *vhpet;
	uint64_t data;

	vhpet = FUNC9(vm);
	offset = gpa - VHPET_BASE;

	FUNC4(vhpet);

	/* Accesses to the HPET should be 4 or 8 bytes wide */
	if (size != 4 && size != 8) {
		FUNC6(vhpet->vm, "hpet invalid mmio read: "
		    "offset 0x%08x, size %d", offset, size);
		data = 0;
		goto done;
	}

	/* Access to the HPET should be naturally aligned to its width */
	if (offset & (size - 1)) {
		FUNC6(vhpet->vm, "hpet invalid mmio read: "
		    "offset 0x%08x, size %d", offset, size);
		data = 0;
		goto done;
	}

	if (offset == HPET_CAPABILITIES || offset == HPET_CAPABILITIES + 4) {
		data = FUNC7();
		goto done;	
	}

	if (offset == HPET_CONFIG || offset == HPET_CONFIG + 4) {
		data = vhpet->config;
		goto done;
	}

	if (offset == HPET_ISR || offset == HPET_ISR + 4) {
		data = vhpet->isr;
		goto done;
	}

	if (offset == HPET_MAIN_COUNTER || offset == HPET_MAIN_COUNTER + 4) {
		data = FUNC8(vhpet, NULL);
		goto done;
	}

	for (i = 0; i < VHPET_NUM_TIMERS; i++) {
		if (offset == FUNC0(i) ||
		    offset == FUNC0(i) + 4) {
			data = vhpet->timer[i].cap_config;
			break;
		}

		if (offset == FUNC1(i) ||
		    offset == FUNC1(i) + 4) {
			data = vhpet->timer[i].compval;
			break;
		}

		if (offset == FUNC3(i) ||
		    offset == FUNC2(i)) {
			data = vhpet->timer[i].msireg;
			break;
		}
	}

	if (i >= VHPET_NUM_TIMERS)
		data = 0;
done:
	FUNC5(vhpet);

	if (size == 4) {
		if (offset & 0x4)
			data >>= 32;
	}
	*rval = data;
	return (0);
}