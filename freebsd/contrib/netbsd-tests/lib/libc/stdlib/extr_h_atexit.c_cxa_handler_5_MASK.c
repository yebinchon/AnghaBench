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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  arg_1 ; 
 int exiting_state ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	static int cxa_handler_5_called;

	FUNC0(arg == (void *)&arg_1);
	FUNC0(cxa_handler_5_called == 0);
	FUNC0(exiting_state == 5);

	exiting_state--;
	cxa_handler_5_called = 1;
	FUNC1();
}