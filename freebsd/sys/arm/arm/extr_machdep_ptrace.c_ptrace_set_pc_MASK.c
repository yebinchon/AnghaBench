#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_1__* td_frame; } ;
struct TYPE_2__ {unsigned long tf_pc; } ;

/* Variables and functions */

int
FUNC0(struct thread *td, unsigned long addr)
{
	td->td_frame->tf_pc = addr;
	return (0);
}