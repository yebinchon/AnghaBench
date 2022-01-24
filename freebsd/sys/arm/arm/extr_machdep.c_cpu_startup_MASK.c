#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  unsigned int const uintmax_t ;
typedef  int uint32_t ;
typedef  scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ sf_sp; } ;
struct pcb {TYPE_1__ pcb_regs; } ;
struct TYPE_4__ {scalar_t__ td_kstack; struct pcb* td_pcb; } ;

/* Variables and functions */
 scalar_t__ ARM_RAS_END ; 
 scalar_t__ ARM_RAS_START ; 
 int /*<<< orphan*/  ARM_TP_ADDRESS ; 
 scalar_t__ USPACE_SVC_STACK_TOP ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  kmi ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct pcb*) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned int const,unsigned int const) ; 
 int /*<<< orphan*/  realmem ; 
 TYPE_2__ thread0 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static void
FUNC16(void *dummy)
{
	struct pcb *pcb = thread0.td_pcb;
	const unsigned int mbyte = 1024 * 1024;
#if __ARM_ARCH < 6 && !defined(ARM_CACHE_LOCK_ENABLE)
	vm_page_t m;
#endif

	FUNC6();

	FUNC13(&kmi);

	/*
	 * Display the RAM layout.
	 */
	FUNC10("real memory  = %ju (%ju MB)\n",
	    (uintmax_t)FUNC1(realmem),
	    (uintmax_t)FUNC1(realmem) / mbyte);
	FUNC10("avail memory = %ju (%ju MB)\n",
	    (uintmax_t)FUNC1(FUNC12()),
	    (uintmax_t)FUNC1(FUNC12()) / mbyte);
	if (bootverbose) {
		FUNC3();
		FUNC5();
	}

	FUNC4();
	FUNC15();
	pcb->pcb_regs.sf_sp = (u_int)thread0.td_kstack +
	    USPACE_SVC_STACK_TOP;
	FUNC9(kernel_pmap, pcb);
#if __ARM_ARCH < 6
	FUNC11(VM_PROT_READ);
	FUNC8();
#ifdef ARM_CACHE_LOCK_ENABLE
	pmap_kenter_user(ARM_TP_ADDRESS, ARM_TP_ADDRESS);
	arm_lock_cache_line(ARM_TP_ADDRESS);
#else
	m = FUNC14(NULL, 0, VM_ALLOC_NOOBJ | VM_ALLOC_ZERO);
	FUNC7(ARM_TP_ADDRESS, FUNC0(m));
#endif
	*(uint32_t *)ARM_RAS_START = 0;
	*(uint32_t *)ARM_RAS_END = 0xffffffff;
#endif
}