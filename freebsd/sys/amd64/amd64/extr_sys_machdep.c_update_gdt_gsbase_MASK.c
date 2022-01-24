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
typedef  int uint32_t ;
struct user_segment_descriptor {int sd_lobase; int sd_hibase; } ;
struct thread {int /*<<< orphan*/  td_pcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCB_FULL_IRET ; 
 struct user_segment_descriptor* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  gs32p ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct thread *td, uint32_t base)
{
	struct user_segment_descriptor *sd;

	if (td != curthread)
		return;
	FUNC3(td->td_pcb, PCB_FULL_IRET);
	FUNC1();
	sd = FUNC0(gs32p);
	sd->sd_lobase = base & 0xffffff;
	sd->sd_hibase = (base >> 24) & 0xff;
	FUNC2();
}