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
typedef  uintptr_t uint32_t ;
struct image_params {int dummy; } ;
typedef  int /*<<< orphan*/  register_t ;
typedef  int /*<<< orphan*/  cloudabi32_tcb_t ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,struct image_params*) ; 
 int FUNC1 (uintptr_t*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 uintptr_t FUNC3 (int,int) ; 

__attribute__((used)) static int
FUNC4(register_t **stack_base, struct image_params *imgp)
{
	int error;
	uint32_t args[2];

	/* Place auxiliary vector and TCB on the stack. */
	error = FUNC0(stack_base, imgp);
	if (error != 0)
		return (error);

	/*
	 * On i386, the TCB is referred to by %gs:0. Reuse the empty
	 * space normally used by the return address (args[0]) to store
	 * a single element array, containing a pointer to the TCB. %gs
	 * base will point to this.
	 *
	 * Also let the first argument of the entry point (args[1])
	 * refer to the auxiliary vector, which is stored right after
	 * the TCB.
	 */
	args[0] = (uintptr_t)*stack_base;
	args[1] = (uintptr_t)*stack_base +
	    FUNC3(sizeof(cloudabi32_tcb_t), sizeof(register_t));
	*stack_base -= FUNC2(sizeof(args), sizeof(register_t));
	return (FUNC1(args, *stack_base, sizeof(args)));
}