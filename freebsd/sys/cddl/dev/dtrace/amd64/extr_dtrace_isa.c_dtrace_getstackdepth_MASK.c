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
typedef  scalar_t__ vm_offset_t ;
struct amd64_frame {struct amd64_frame* f_frame; } ;
struct TYPE_2__ {scalar_t__ td_kstack; int td_kstack_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long) ; 
 int PAGE_SIZE ; 
 TYPE_1__* curthread ; 
 scalar_t__ FUNC1 () ; 

int
FUNC2(int aframes)
{
	int depth = 0;
	struct amd64_frame *frame;
	vm_offset_t rbp;

	aframes++;
	rbp = FUNC1();
	frame = (struct amd64_frame *)rbp;
	depth++;
	for(;;) {
		if (!FUNC0((long) frame))
			break;
		if (!FUNC0((long) frame->f_frame))
			break;
		depth++;
		if (frame->f_frame <= frame ||
		    (vm_offset_t)frame->f_frame >= curthread->td_kstack +
		    curthread->td_kstack_pages * PAGE_SIZE)
			break;
		frame = frame->f_frame;
	}
	if (depth < aframes)
		return 0;
	else
		return depth - aframes;
}