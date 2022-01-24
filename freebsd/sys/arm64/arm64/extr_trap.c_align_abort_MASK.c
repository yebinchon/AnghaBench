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
struct trapframe {scalar_t__ tf_elr; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ADRALN ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,struct trapframe*) ; 

__attribute__((used)) static void
FUNC3(struct thread *td, struct trapframe *frame, uint64_t esr,
    uint64_t far, int lower)
{
	if (!lower)
		FUNC1("Misaligned access from kernel space!");

	FUNC0(td, SIGBUS, BUS_ADRALN, (void *)frame->tf_elr);
	FUNC2(td, frame);
}