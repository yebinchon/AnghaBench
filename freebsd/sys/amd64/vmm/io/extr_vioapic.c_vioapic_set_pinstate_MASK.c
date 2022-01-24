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
struct vioapic {TYPE_1__* rtbl; } ;
struct TYPE_2__ {int acnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int REDIR_ENTRIES ; 
 int /*<<< orphan*/  FUNC1 (struct vioapic*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vioapic*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vioapic*,char*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct vioapic*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct vioapic*,int) ; 

__attribute__((used)) static void
FUNC7(struct vioapic *vioapic, int pin, bool newstate)
{
	int oldcnt, newcnt;
	bool needintr;

	FUNC0(pin >= 0 && pin < REDIR_ENTRIES,
	    ("vioapic_set_pinstate: invalid pin number %d", pin));

	FUNC0(FUNC4(vioapic),
	    ("vioapic_set_pinstate: vioapic is not locked"));

	oldcnt = vioapic->rtbl[pin].acnt;
	if (newstate)
		vioapic->rtbl[pin].acnt++;
	else
		vioapic->rtbl[pin].acnt--;
	newcnt = vioapic->rtbl[pin].acnt;

	if (newcnt < 0) {
		FUNC2(vioapic, "ioapic pin%d: bad acnt %d",
		    pin, newcnt);
	}

	needintr = false;
	if (oldcnt == 0 && newcnt == 1) {
		needintr = true;
		FUNC1(vioapic, "ioapic pin%d: asserted", pin);
	} else if (oldcnt == 1 && newcnt == 0) {
		FUNC1(vioapic, "ioapic pin%d: deasserted", pin);
	} else {
		FUNC3(vioapic, "ioapic pin%d: %s, ignored, acnt %d",
		    pin, FUNC5(newstate), newcnt);
	}

	if (needintr)
		FUNC6(vioapic, pin);
}