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
struct amd64_frame {struct amd64_frame* f_frame; int /*<<< orphan*/  f_retaddr; } ;
typedef  scalar_t__ register_t ;
typedef  scalar_t__ db_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct amd64_frame*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (long,int,int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{
	struct amd64_frame *frame;
	db_addr_t callpc;
	register_t rbp;

	__asm __volatile("movq %%rbp,%0" : "=r" (rbp));
	frame = (struct amd64_frame *)rbp;
	callpc = (db_addr_t)FUNC1((long)&frame->f_retaddr, 8, FALSE);
	frame = frame->f_frame;
	FUNC0(curthread, NULL, frame, callpc, 0, -1);
}