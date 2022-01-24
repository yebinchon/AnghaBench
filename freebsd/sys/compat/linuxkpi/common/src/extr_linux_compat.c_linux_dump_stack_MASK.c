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
struct stack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stack*) ; 
 int /*<<< orphan*/  FUNC1 (struct stack*) ; 
 int /*<<< orphan*/  FUNC2 (struct stack*) ; 

void
FUNC3(void)
{
#ifdef STACK
	struct stack st;

	stack_zero(&st);
	stack_save(&st);
	stack_print(&st);
#endif
}