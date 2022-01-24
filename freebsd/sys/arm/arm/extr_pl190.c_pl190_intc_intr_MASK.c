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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct trapframe {int dummy; } ;
struct pl190_intc_softc {int dummy; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int FUNC0 (struct pl190_intc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VICIRQSTATUS ; 
 int /*<<< orphan*/  FUNC2 (struct pl190_intc_softc*) ; 
 int VIC_NIRQS ; 
 int /*<<< orphan*/  FUNC3 (struct pl190_intc_softc*) ; 
 int /*<<< orphan*/  cpuid ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC4 (struct pl190_intc_softc*,int,struct trapframe*) ; 

__attribute__((used)) static int
FUNC5(void *arg)
{
	struct pl190_intc_softc *sc;
	u_int cpu;
	uint32_t num, pending;
	struct trapframe *tf;

	sc = arg;
	cpu = FUNC1(cpuid);
	tf = curthread->td_intr_frame;

	FUNC2(sc);
	pending = FUNC0(sc, VICIRQSTATUS);
	FUNC3(sc);
	for (num = 0 ; num < VIC_NIRQS; num++) {
		if (pending & (1 << num))
			FUNC4(sc, num, tf);
	}

	return (FILTER_HANDLED);
}