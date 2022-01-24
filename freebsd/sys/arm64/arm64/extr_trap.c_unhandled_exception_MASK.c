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
typedef  int /*<<< orphan*/  uint64_t ;
struct trapframe {int /*<<< orphan*/  tf_esr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  far_el1 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct trapframe *frame)
{
	uint64_t esr, far;

	far = FUNC0(far_el1);
	esr = frame->tf_esr;

	FUNC2(frame);
	FUNC3(" far: %16lx\n", far);
	FUNC3(" esr:         %.8lx\n", esr);
	FUNC1("Unhandled exception");
}