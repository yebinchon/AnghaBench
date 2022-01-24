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
struct vatpic {struct atpic* atpic; } ;
struct atpic {int ready; } ;
typedef  enum irqstate { ____Placeholder_irqstate } irqstate ;

/* Variables and functions */
 int EINVAL ; 
#define  IRQSTATE_ASSERT 130 
#define  IRQSTATE_DEASSERT 129 
#define  IRQSTATE_PULSE 128 
 int /*<<< orphan*/  FUNC0 (struct vatpic*) ; 
 int /*<<< orphan*/  FUNC1 (struct vatpic*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vatpic*,int,int) ; 
 struct vatpic* FUNC4 (struct vm*) ; 

__attribute__((used)) static int
FUNC5(struct vm *vm, int irq, enum irqstate irqstate)
{
	struct vatpic *vatpic;
	struct atpic *atpic;

	if (irq < 0 || irq > 15)
		return (EINVAL);

	vatpic = FUNC4(vm);
	atpic = &vatpic->atpic[irq >> 3];

	if (atpic->ready == false)
		return (0);

	FUNC0(vatpic);
	switch (irqstate) {
	case IRQSTATE_ASSERT:
		FUNC3(vatpic, irq, true);
		break;
	case IRQSTATE_DEASSERT:
		FUNC3(vatpic, irq, false);
		break;
	case IRQSTATE_PULSE:
		FUNC3(vatpic, irq, true);
		FUNC3(vatpic, irq, false);
		break;
	default:
		FUNC2("vatpic_set_irqstate: invalid irqstate %d", irqstate);
	}
	FUNC1(vatpic);

	return (0);
}