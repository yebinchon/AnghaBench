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
typedef  int uint32_t ;
struct vm {int dummy; } ;
struct vlapic {int dummy; } ;
struct vioapic {TYPE_1__* rtbl; } ;
struct TYPE_2__ {int reg; } ;

/* Variables and functions */
 int APIC_ID_SHIFT ; 
 int IOART_DELMOD ; 
 int IOART_DESTMOD ; 
 int IOART_DESTPHY ; 
 int IOART_INTVEC ; 
 int IOART_TRGRLVL ; 
 int REDIR_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (struct vioapic*) ; 
 int /*<<< orphan*/  FUNC1 (struct vioapic*) ; 
 int /*<<< orphan*/  FUNC2 (struct vlapic*) ; 
 int /*<<< orphan*/  FUNC3 (struct vlapic*,int,int,int,int) ; 
 struct vioapic* FUNC4 (struct vm*) ; 
 struct vlapic* FUNC5 (struct vm*,int) ; 

__attribute__((used)) static void
FUNC6(struct vm *vm, int vcpuid, void *arg)
{
	struct vioapic *vioapic;
	struct vlapic *vlapic;
	uint32_t low, high, dest;
	int delmode, pin, vector;
	bool level, phys;

	vlapic = FUNC5(vm, vcpuid);
	vioapic = FUNC4(vm);

	FUNC0(vioapic);
	/*
	 * Reset all vectors to be edge-triggered.
	 */
	FUNC2(vlapic);
	for (pin = 0; pin < REDIR_ENTRIES; pin++) {
		low = vioapic->rtbl[pin].reg;
		high = vioapic->rtbl[pin].reg >> 32;

		level = low & IOART_TRGRLVL ? true : false;
		if (!level)
			continue;

		/*
		 * For a level-triggered 'pin' let the vlapic figure out if
		 * an assertion on this 'pin' would result in an interrupt
		 * being delivered to it. If yes, then it will modify the
		 * TMR bit associated with this vector to level-triggered.
		 */
		phys = ((low & IOART_DESTMOD) == IOART_DESTPHY);
		delmode = low & IOART_DELMOD;
		vector = low & IOART_INTVEC;
		dest = high >> APIC_ID_SHIFT;
		FUNC3(vlapic, dest, phys, delmode, vector);
	}
	FUNC1(vioapic);
}