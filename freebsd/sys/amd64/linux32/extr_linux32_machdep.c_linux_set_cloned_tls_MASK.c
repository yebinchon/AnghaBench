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
struct user_segment_descriptor {int dummy; } ;
struct thread {TYPE_1__* td_frame; struct pcb* td_pcb; } ;
struct pcb {scalar_t__ pcb_gsbase; } ;
struct l_user_desc {scalar_t__ base_addr; int /*<<< orphan*/  entry_number; } ;
typedef  scalar_t__ register_t ;
typedef  int /*<<< orphan*/  a ;
struct TYPE_2__ {int /*<<< orphan*/  tf_gs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GUGS32_SEL ; 
 int FUNC1 (struct l_user_desc*) ; 
 int FUNC2 (struct l_user_desc*) ; 
 int /*<<< orphan*/  PCB_32BIT ; 
 int /*<<< orphan*/  SEL_UPL ; 
 int FUNC3 (void*,struct l_user_desc*,int) ; 
 int FUNC4 (struct l_user_desc*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct user_segment_descriptor*,int**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pcb*,int /*<<< orphan*/ ) ; 

int
FUNC8(struct thread *td, void *desc)
{
	struct user_segment_descriptor sd;
	struct l_user_desc info;
	struct pcb *pcb;
	int error;
	int a[2];

	error = FUNC3(desc, &info, sizeof(struct l_user_desc));
	if (error) {
		FUNC5(td, "set_cloned_tls copyin info failed!");
	} else {

		/* We might copy out the entry_number as GUGS32_SEL. */
		info.entry_number = GUGS32_SEL;
		error = FUNC4(&info, desc, sizeof(struct l_user_desc));
		if (error)
			FUNC5(td, "set_cloned_tls copyout info failed!");

		a[0] = FUNC1(&info);
		a[1] = FUNC2(&info);

		FUNC6(&sd, &a, sizeof(a));
		pcb = td->td_pcb;
		pcb->pcb_gsbase = (register_t)info.base_addr;
		td->td_frame->tf_gs = FUNC0(GUGS32_SEL, SEL_UPL);
		FUNC7(pcb, PCB_32BIT);
	}

	return (error);
}