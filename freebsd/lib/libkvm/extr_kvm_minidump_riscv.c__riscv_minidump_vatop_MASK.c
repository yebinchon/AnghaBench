#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct TYPE_7__ {scalar_t__ dmapbase; scalar_t__ dmapend; scalar_t__ dmapphys; scalar_t__ kernbase; int pmapsize; } ;
struct vmstate {TYPE_1__ hdr; } ;
typedef  scalar_t__ riscv_pt_entry_t ;
typedef  int riscv_physaddr_t ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  l3 ;
struct TYPE_8__ {int /*<<< orphan*/  program; struct vmstate* vmst; } ;
typedef  TYPE_2__ kvm_t ;
typedef  scalar_t__ kvaddr_t ;

/* Variables and functions */
 scalar_t__ RISCV_L3_SHIFT ; 
 scalar_t__ RISCV_PAGE_MASK ; 
 int RISCV_PAGE_SIZE ; 
 scalar_t__ RISCV_PTE_PPN0_S ; 
 scalar_t__ RISCV_PTE_RWX ; 
 scalar_t__ RISCV_PTE_V ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (TYPE_2__*,int,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(kvm_t *kd, kvaddr_t va, off_t *pa)
{
	struct vmstate *vm;
	riscv_physaddr_t offset;
	riscv_pt_entry_t l3;
	kvaddr_t l3_index;
	riscv_physaddr_t a;
	off_t ofs;

	vm = kd->vmst;
	offset = va & RISCV_PAGE_MASK;

	if (va >= vm->hdr.dmapbase && va < vm->hdr.dmapend) {
		a = (va - vm->hdr.dmapbase + vm->hdr.dmapphys) &
		    ~RISCV_PAGE_MASK;
		ofs = FUNC1(kd, a, RISCV_PAGE_SIZE);
		if (ofs == -1) {
			FUNC0(kd, kd->program, "_riscv_minidump_vatop: "
			    "direct map address 0x%jx not in minidump",
			    (uintmax_t)va);
			goto invalid;
		}
		*pa = ofs + offset;
		return (RISCV_PAGE_SIZE - offset);
	} else if (va >= vm->hdr.kernbase) {
		l3_index = (va - vm->hdr.kernbase) >> RISCV_L3_SHIFT;
		if (l3_index >= vm->hdr.pmapsize / sizeof(l3))
			goto invalid;
		l3 = FUNC2(kd, l3_index);
		if ((l3 & RISCV_PTE_V) == 0 || (l3 & RISCV_PTE_RWX) == 0) {
			FUNC0(kd, kd->program,
			    "_riscv_minidump_vatop: pte not valid");
			goto invalid;
		}
		a = (l3 >> RISCV_PTE_PPN0_S) << RISCV_L3_SHIFT;
		ofs = FUNC1(kd, a, RISCV_PAGE_SIZE);
		if (ofs == -1) {
			FUNC0(kd, kd->program, "_riscv_minidump_vatop: "
			    "physical address 0x%jx not in minidump",
			    (uintmax_t)a);
			goto invalid;
		}
		*pa = ofs + offset;
		return (RISCV_PAGE_SIZE - offset);
	} else {
		FUNC0(kd, kd->program,
	    "_riscv_minidump_vatop: virtual address 0x%jx not minidumped",
		    (uintmax_t)va);
		goto invalid;
	}

invalid:
	FUNC0(kd, 0, "invalid address (0x%jx)", (uintmax_t)va);
	return (0);
}