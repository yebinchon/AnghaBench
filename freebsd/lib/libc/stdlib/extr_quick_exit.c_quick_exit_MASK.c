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
struct quick_exit_handler {int /*<<< orphan*/  (* cleanup ) () ;struct quick_exit_handler* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct quick_exit_handler* handlers ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(int status)
{
	struct quick_exit_handler *h;

	/*
	 * XXX: The C++ spec requires us to call std::terminate if there is an
	 * exception here.
	 */
	for (h = handlers; NULL != h; h = h->next) {
		FUNC1();
		h->cleanup();
	}
	FUNC0(status);
}