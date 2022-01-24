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
struct TYPE_7__ {int kernbase; int pmapsize; int dmapbase; int dmapend; } ;
struct vmstate {TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  pte ;
typedef  int off_t ;
struct TYPE_8__ {int /*<<< orphan*/  program; struct vmstate* vmst; } ;
typedef  TYPE_2__ kvm_t ;
typedef  int kvaddr_t ;
typedef  int amd64_pte_t ;
typedef  int amd64_physaddr_t ;

/* Variables and functions */
 int AMD64_PAGE_MASK ; 
 int AMD64_PAGE_SHIFT ; 
 int AMD64_PAGE_SIZE ; 
 int AMD64_PG_FRAME ; 
 int AMD64_PG_V ; 
 int FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (TYPE_2__*,int,int) ; 

__attribute__((used)) static int
FUNC3(kvm_t *kd, kvaddr_t va, off_t *pa)
{
	struct vmstate *vm;
	amd64_physaddr_t offset;
	amd64_pte_t pte;
	kvaddr_t pteindex;
	amd64_physaddr_t a;
	off_t ofs;

	vm = kd->vmst;
	offset = va & AMD64_PAGE_MASK;

	if (va >= vm->hdr.kernbase) {
		pteindex = (va - vm->hdr.kernbase) >> AMD64_PAGE_SHIFT;
		if (pteindex >= vm->hdr.pmapsize / sizeof(pte))
			goto invalid;
		pte = FUNC0(kd, pteindex);
		if ((pte & AMD64_PG_V) == 0) {
			FUNC1(kd, kd->program,
			    "_amd64_minidump_vatop_v1: pte not valid");
			goto invalid;
		}
		a = pte & AMD64_PG_FRAME;
		ofs = FUNC2(kd, a, AMD64_PAGE_SIZE);
		if (ofs == -1) {
			FUNC1(kd, kd->program,
	    "_amd64_minidump_vatop_v1: physical address 0x%jx not in minidump",
			    (uintmax_t)a);
			goto invalid;
		}
		*pa = ofs + offset;
		return (AMD64_PAGE_SIZE - offset);
	} else if (va >= vm->hdr.dmapbase && va < vm->hdr.dmapend) {
		a = (va - vm->hdr.dmapbase) & ~AMD64_PAGE_MASK;
		ofs = FUNC2(kd, a, AMD64_PAGE_SIZE);
		if (ofs == -1) {
			FUNC1(kd, kd->program,
    "_amd64_minidump_vatop_v1: direct map address 0x%jx not in minidump",
			    (uintmax_t)va);
			goto invalid;
		}
		*pa = ofs + offset;
		return (AMD64_PAGE_SIZE - offset);
	} else {
		FUNC1(kd, kd->program,
	    "_amd64_minidump_vatop_v1: virtual address 0x%jx not minidumped",
		    (uintmax_t)va);
		goto invalid;
	}

invalid:
	FUNC1(kd, 0, "invalid address (0x%jx)", (uintmax_t)va);
	return (0);
}