#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_7__ {int td_pflags; } ;
struct TYPE_6__ {scalar_t__ pcb_save; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PCB_KERNFPU ; 
 int FUNC1 (TYPE_1__*) ; 
 int TDP_KTHREAD ; 
 TYPE_1__* curpcb ; 
 TYPE_3__* curthread ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC4(u_int flags)
{

	FUNC0((curthread->td_pflags & TDP_KTHREAD) != 0,
	    ("Only kthread may use fpu_kern_thread"));
	FUNC0(curpcb->pcb_save == FUNC2(curpcb),
	    ("mangled pcb_save"));
	FUNC0(FUNC1(curpcb), ("recursive call"));

	FUNC3(curpcb, PCB_KERNFPU);
	return (0);
}