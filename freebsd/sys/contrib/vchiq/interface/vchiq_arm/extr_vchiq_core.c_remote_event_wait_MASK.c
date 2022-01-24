#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int armed; scalar_t__ fired; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ REMOTE_EVENT_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline int
FUNC3(REMOTE_EVENT_T *event)
{
	if (!event->fired) {
		event->armed = 1;
		FUNC1();
		if (!event->fired) {
			if (FUNC0(event->event) != 0) {
				event->armed = 0;
				return 0;
			}
		}
		event->armed = 0;
		FUNC2();
	}

	event->fired = 0;
	return 1;
}