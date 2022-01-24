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
struct vm {int dummy; } ;
struct vioapic {TYPE_1__* rtbl; } ;
struct TYPE_2__ {int reg; scalar_t__ acnt; } ;

/* Variables and functions */
 int IOART_INTVEC ; 
 int IOART_REM_IRR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int REDIR_ENTRIES ; 
 int /*<<< orphan*/  FUNC1 (struct vioapic*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vioapic*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct vioapic*) ; 
 int /*<<< orphan*/  FUNC4 (struct vioapic*) ; 
 int /*<<< orphan*/  FUNC5 (struct vioapic*,int) ; 
 struct vioapic* FUNC6 (struct vm*) ; 

void
FUNC7(struct vm *vm, int vcpuid, int vector)
{
	struct vioapic *vioapic;
	int pin;

	FUNC0(vector >= 0 && vector < 256,
	    ("vioapic_process_eoi: invalid vector %d", vector));

	vioapic = FUNC6(vm);
	FUNC1(vioapic, "ioapic processing eoi for vector %d", vector);

	/*
	 * XXX keep track of the pins associated with this vector instead
	 * of iterating on every single pin each time.
	 */
	FUNC3(vioapic);
	for (pin = 0; pin < REDIR_ENTRIES; pin++) {
		if ((vioapic->rtbl[pin].reg & IOART_REM_IRR) == 0)
			continue;
		if ((vioapic->rtbl[pin].reg & IOART_INTVEC) != vector)
			continue;
		vioapic->rtbl[pin].reg &= ~IOART_REM_IRR;
		if (vioapic->rtbl[pin].acnt > 0) {
			FUNC2(vioapic, "ioapic pin%d: asserted at eoi, "
			    "acnt %d", pin, vioapic->rtbl[pin].acnt);
			FUNC5(vioapic, pin);
		}
	}
	FUNC4(vioapic);
}