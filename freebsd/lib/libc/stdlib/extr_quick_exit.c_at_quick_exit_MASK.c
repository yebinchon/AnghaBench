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
struct quick_exit_handler {void (* cleanup ) () ;struct quick_exit_handler* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  atexit_mutex ; 
 struct quick_exit_handler* handlers ; 
 struct quick_exit_handler* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(void (*func)(void))
{
	struct quick_exit_handler *h;
	
	h = FUNC1(sizeof(*h));

	if (NULL == h)
		return (1);
	h->cleanup = func;
	FUNC2(&atexit_mutex);
	h->next = handlers;
	FUNC0();
	handlers = h;
	FUNC3(&atexit_mutex);
	return (0);
}