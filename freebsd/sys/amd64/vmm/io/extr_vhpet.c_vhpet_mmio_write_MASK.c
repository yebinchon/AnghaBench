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
typedef  int uint32_t ;
struct vhpet {int config; int isr; int countbase; TYPE_1__* timer; int /*<<< orphan*/  vm; } ;
typedef  int /*<<< orphan*/  sbintime_t ;
struct TYPE_2__ {int compval; int comprate; int cap_config; int msireg; } ;

/* Variables and functions */
 int HPET_CNF_ENABLE ; 
 int HPET_CNF_LEG_RT ; 
 int HPET_CONFIG ; 
 int HPET_ISR ; 
 int HPET_MAIN_COUNTER ; 
 int HPET_TCNF_VAL_SET ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int VHPET_BASE ; 
 int /*<<< orphan*/  FUNC5 (struct vhpet*) ; 
 int VHPET_NUM_TIMERS ; 
 int /*<<< orphan*/  FUNC6 (struct vhpet*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int,int) ; 
 int FUNC11 (struct vhpet*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct vhpet*) ; 
 scalar_t__ FUNC13 (struct vhpet*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct vhpet*) ; 
 int /*<<< orphan*/  FUNC15 (struct vhpet*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct vhpet*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct vhpet*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct vhpet*,int,int,int) ; 
 struct vhpet* FUNC19 (void*) ; 

int
FUNC20(void *vm, int vcpuid, uint64_t gpa, uint64_t val, int size,
    void *arg)
{
	struct vhpet *vhpet;
	uint64_t data, mask, oldval, val64;
	uint32_t isr_clear_mask, old_compval, old_comprate, counter;
	sbintime_t now, *nowptr;
	int i, offset;

	vhpet = FUNC19(vm);
	offset = gpa - VHPET_BASE;

	FUNC5(vhpet);

	/* Accesses to the HPET should be 4 or 8 bytes wide */
	switch (size) {
	case 8:
		mask = 0xffffffffffffffff;
		data = val;
		break;
	case 4:
		mask = 0xffffffff;
		data = val;
		if ((offset & 0x4) != 0) {
			mask <<= 32;
			data <<= 32;
		} 
		break;
	default:
		FUNC9(vhpet->vm, "hpet invalid mmio write: "
		    "offset 0x%08x, size %d", offset, size);
		goto done;
	}

	/* Access to the HPET should be naturally aligned to its width */
	if (offset & (size - 1)) {
		FUNC9(vhpet->vm, "hpet invalid mmio write: "
		    "offset 0x%08x, size %d", offset, size);
		goto done;
	}

	if (offset == HPET_CONFIG || offset == HPET_CONFIG + 4) {
		/*
		 * Get the most recent value of the counter before updating
		 * the 'config' register. If the HPET is going to be disabled
		 * then we need to update 'countbase' with the value right
		 * before it is disabled.
		 */
		nowptr = FUNC12(vhpet) ? &now : NULL;
		counter = FUNC11(vhpet, nowptr);
		oldval = vhpet->config;
		FUNC10(&vhpet->config, data, mask);

		/*
		 * LegacyReplacement Routing is not supported so clear the
		 * bit explicitly.
		 */
		vhpet->config &= ~HPET_CNF_LEG_RT;

		if ((oldval ^ vhpet->config) & HPET_CNF_ENABLE) {
			if (FUNC12(vhpet)) {
				FUNC14(vhpet);
				FUNC7(vhpet->vm, "hpet enabled");
			} else {
				FUNC16(vhpet, counter, now);
				FUNC7(vhpet->vm, "hpet disabled");
			}
		}
		goto done;
	}

	if (offset == HPET_ISR || offset == HPET_ISR + 4) {
		isr_clear_mask = vhpet->isr & data;
		for (i = 0; i < VHPET_NUM_TIMERS; i++) {
			if ((isr_clear_mask & (1 << i)) != 0) {
				FUNC8(vhpet->vm, "hpet t%d isr cleared", i);
				FUNC17(vhpet, i);
			}
		}
		goto done;
	}

	if (offset == HPET_MAIN_COUNTER || offset == HPET_MAIN_COUNTER + 4) {
		/* Zero-extend the counter to 64-bits before updating it */
		val64 = FUNC11(vhpet, NULL);
		FUNC10(&val64, data, mask);
		vhpet->countbase = val64;
		if (FUNC12(vhpet))
			FUNC14(vhpet);
		goto done;
	}

	for (i = 0; i < VHPET_NUM_TIMERS; i++) {
		if (offset == FUNC0(i) ||
		    offset == FUNC0(i) + 4) {
			FUNC18(vhpet, i, data, mask);
			break;
		}

		if (offset == FUNC1(i) ||
		    offset == FUNC1(i) + 4) {
			old_compval = vhpet->timer[i].compval;
			old_comprate = vhpet->timer[i].comprate;
			if (FUNC13(vhpet, i)) {
				/*
				 * In periodic mode writes to the comparator
				 * change the 'compval' register only if the
				 * HPET_TCNF_VAL_SET bit is set in the config
				 * register.
				 */
				val64 = vhpet->timer[i].comprate;
				FUNC10(&val64, data, mask);
				vhpet->timer[i].comprate = val64;
				if ((vhpet->timer[i].cap_config &
				    HPET_TCNF_VAL_SET) != 0) {
					vhpet->timer[i].compval = val64;
				}
			} else {
				FUNC4(vhpet->timer[i].comprate == 0,
				    ("vhpet one-shot timer %d has invalid "
				    "rate %u", i, vhpet->timer[i].comprate));
				val64 = vhpet->timer[i].compval;
				FUNC10(&val64, data, mask);
				vhpet->timer[i].compval = val64;
			}
			vhpet->timer[i].cap_config &= ~HPET_TCNF_VAL_SET;

			if (vhpet->timer[i].compval != old_compval ||
			    vhpet->timer[i].comprate != old_comprate) {
				if (FUNC12(vhpet)) {
					counter = FUNC11(vhpet, &now);
					FUNC15(vhpet, i, counter,
					    now);
				}
			}
			break;
		}

		if (offset == FUNC3(i) ||
		    offset == FUNC2(i)) {
			FUNC10(&vhpet->timer[i].msireg, data, mask);
			break;
		}
	}
done:
	FUNC6(vhpet);
	return (0);
}