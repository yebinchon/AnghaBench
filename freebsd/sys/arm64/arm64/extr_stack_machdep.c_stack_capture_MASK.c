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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct unwind_state {scalar_t__ pc; scalar_t__ fp; } ;
struct stack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct stack*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct stack*) ; 
 int /*<<< orphan*/  FUNC3 (struct unwind_state*) ; 

__attribute__((used)) static void
FUNC4(struct stack *st, struct unwind_state *frame)
{

	FUNC2(st);
	while (1) {
		FUNC3(frame);
		if (!FUNC0((vm_offset_t)frame->fp) ||
		     !FUNC0((vm_offset_t)frame->pc))
			break;
		if (FUNC1(st, frame->pc) == -1)
			break;
	}
}