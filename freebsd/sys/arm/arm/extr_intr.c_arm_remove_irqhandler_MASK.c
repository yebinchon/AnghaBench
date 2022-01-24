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
struct intr_event {int /*<<< orphan*/  ie_handlers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (void*) ; 
 struct intr_event** intr_events ; 

int
FUNC4(int irq, void *cookie)
{
	struct intr_event *event;
	int error;

	event = intr_events[irq];
	FUNC1(irq);

	error = FUNC3(cookie);

	if (!FUNC0(&event->ie_handlers))
		FUNC2(irq);
	return (error);
}