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
typedef  int /*<<< orphan*/  td ;
struct thread {scalar_t__ td_tid; scalar_t__ td_oncpu; int /*<<< orphan*/  p_pid; int /*<<< orphan*/  td_kstack; scalar_t__ td_pcb; int /*<<< orphan*/  p_threads; } ;
struct proc {scalar_t__ td_tid; scalar_t__ td_oncpu; int /*<<< orphan*/  p_pid; int /*<<< orphan*/  td_kstack; scalar_t__ td_pcb; int /*<<< orphan*/  p_threads; } ;
struct kthr {uintptr_t kaddr; uintptr_t pcb; scalar_t__ tid; uintptr_t paddr; scalar_t__ cpu; int /*<<< orphan*/  pid; int /*<<< orphan*/  kstack; struct kthr* next; } ;
typedef  int /*<<< orphan*/  p ;
typedef  uintptr_t CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 scalar_t__ NOCPU ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 uintptr_t dumppcb ; 
 scalar_t__ dumptid ; 
 struct kthr* first ; 
 uintptr_t FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  kvm ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,uintptr_t,struct thread*,int) ; 
 struct kthr* FUNC7 (int) ; 
 int /*<<< orphan*/  p_list ; 
 int /*<<< orphan*/  stopped_cpus ; 
 int /*<<< orphan*/  td_plist ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(uintptr_t paddr)
{
	struct proc p;
	struct thread td;
	struct kthr *kt;
	CORE_ADDR addr;

	while (paddr != 0) {
		if (FUNC6(kvm, paddr, &p, sizeof(p)) != sizeof(p)) {
			FUNC8("kvm_read: %s", FUNC5(kvm));
			break;
		}
		addr = (uintptr_t)FUNC2(&p.p_threads);
		while (addr != 0) {
			if (FUNC6(kvm, addr, &td, sizeof(td)) !=
			    sizeof(td)) {
				FUNC8("kvm_read: %s", FUNC5(kvm));
				break;
			}
			kt = FUNC7(sizeof(*kt));
			kt->next = first;
			kt->kaddr = addr;
			if (td.td_tid == dumptid)
				kt->pcb = dumppcb;
			else if (td.td_oncpu != NOCPU &&
			    FUNC0(td.td_oncpu, &stopped_cpus))
				kt->pcb = FUNC4(td.td_oncpu);
			else
				kt->pcb = (uintptr_t)td.td_pcb;
			kt->kstack = td.td_kstack;
			kt->tid = td.td_tid;
			kt->pid = p.p_pid;
			kt->paddr = paddr;
			kt->cpu = td.td_oncpu;
			first = kt;
			addr = (uintptr_t)FUNC3(&td, td_plist);
		}
		paddr = (uintptr_t)FUNC1(&p, p_list);
	}
}