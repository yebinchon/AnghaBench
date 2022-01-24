#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct trapframe {int /*<<< orphan*/  tf_r1; int /*<<< orphan*/  tf_r0; } ;
struct thread {int /*<<< orphan*/  td_tid; struct trapframe* td_frame; } ;
struct TYPE_5__ {int /*<<< orphan*/  ss_size; int /*<<< orphan*/  ss_sp; } ;
typedef  TYPE_1__ stack_t ;
struct TYPE_6__ {int /*<<< orphan*/  argument; int /*<<< orphan*/  entry_point; int /*<<< orphan*/  stack_len; int /*<<< orphan*/  stack; } ;
typedef  TYPE_2__ cloudabi32_threadattr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td,
    const cloudabi32_threadattr_t *attr, uint32_t tcb)
{
	struct trapframe *frame;
	stack_t stack;

	/* Perform standard register initialization. */
	stack.ss_sp = FUNC0(attr->stack);
	stack.ss_size = attr->stack_len;
	FUNC1(td, FUNC0(attr->entry_point), NULL, &stack);

	/*
	 * Pass in the thread ID of the new thread and the argument
	 * pointer provided by the parent thread in as arguments to the
	 * entry point.
	 */
	frame = td->td_frame;
	frame->tf_r0 = td->td_tid;
	frame->tf_r1 = attr->argument;

	/* Set up TLS. */
	return (FUNC2(td, FUNC0(tcb)));
}