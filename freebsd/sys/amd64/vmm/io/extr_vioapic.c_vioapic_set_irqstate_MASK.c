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
struct vm {int dummy; } ;
struct vioapic {int dummy; } ;
typedef  enum irqstate { ____Placeholder_irqstate } irqstate ;

/* Variables and functions */
 int EINVAL ; 
#define  IRQSTATE_ASSERT 130 
#define  IRQSTATE_DEASSERT 129 
#define  IRQSTATE_PULSE 128 
 int REDIR_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (struct vioapic*) ; 
 int /*<<< orphan*/  FUNC1 (struct vioapic*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vioapic*,int,int) ; 
 struct vioapic* FUNC4 (struct vm*) ; 

__attribute__((used)) static int
FUNC5(struct vm *vm, int irq, enum irqstate irqstate)
{
	struct vioapic *vioapic;

	if (irq < 0 || irq >= REDIR_ENTRIES)
		return (EINVAL);

	vioapic = FUNC4(vm);

	FUNC0(vioapic);
	switch (irqstate) {
	case IRQSTATE_ASSERT:
		FUNC3(vioapic, irq, true);
		break;
	case IRQSTATE_DEASSERT:
		FUNC3(vioapic, irq, false);
		break;
	case IRQSTATE_PULSE:
		FUNC3(vioapic, irq, true);
		FUNC3(vioapic, irq, false);
		break;
	default:
		FUNC2("vioapic_set_irqstate: invalid irqstate %d", irqstate);
	}
	FUNC1(vioapic);

	return (0);
}