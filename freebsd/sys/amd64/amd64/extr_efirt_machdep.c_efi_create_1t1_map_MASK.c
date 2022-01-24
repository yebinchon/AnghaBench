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
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
struct efi_md {int md_attr; int md_phys; int md_pages; int /*<<< orphan*/ * md_virt; } ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int /*<<< orphan*/  pml4_entry_t ;

/* Variables and functions */
 int EFI_MD_ATTR_RT ; 
 int EFI_MD_ATTR_UC ; 
 int EFI_MD_ATTR_WB ; 
 int EFI_MD_ATTR_WC ; 
 int EFI_MD_ATTR_WP ; 
 int EFI_MD_ATTR_WT ; 
 int EFI_PAGE_MASK ; 
 int EFI_PAGE_SIZE ; 
 int /*<<< orphan*/  FALSE ; 
 int NPDEPG ; 
 int NPDPEPG ; 
 int NPML4EPG ; 
 int /*<<< orphan*/  OBJT_PHYS ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int VM_MAXUSER_ADDRESS ; 
 int VM_MEMATTR_UNCACHEABLE ; 
 int VM_MEMATTR_WRITE_BACK ; 
 int VM_MEMATTR_WRITE_COMBINING ; 
 int VM_MEMATTR_WRITE_PROTECTED ; 
 int VM_MEMATTR_WRITE_THROUGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 int X86_PG_RW ; 
 int X86_PG_V ; 
 scalar_t__ bootverbose ; 
 scalar_t__ efi_1t1_idx ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct efi_md* FUNC7 (struct efi_md*,int) ; 
 int /*<<< orphan*/ * efi_pml4 ; 
 int /*<<< orphan*/  efi_pml4_page ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  obj_1t1_pt ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool
FUNC14(struct efi_md *map, int ndesc, int descsz)
{
	struct efi_md *p;
	pt_entry_t *pte;
	vm_offset_t va;
	uint64_t idx;
	int bits, i, mode;

	obj_1t1_pt = FUNC13(OBJT_PHYS, NULL, FUNC12(1 +
	    NPML4EPG + NPML4EPG * NPDPEPG + NPML4EPG * NPDPEPG * NPDEPG),
	    VM_PROT_ALL, 0, NULL);
	efi_1t1_idx = 0;
	FUNC1(obj_1t1_pt);
	efi_pml4_page = FUNC4();
	FUNC2(obj_1t1_pt);
	efi_pml4 = (pml4_entry_t *)FUNC0(FUNC3(efi_pml4_page));
	FUNC9(efi_pml4_page);

	for (i = 0, p = map; i < ndesc; i++, p = FUNC7(p,
	    descsz)) {
		if ((p->md_attr & EFI_MD_ATTR_RT) == 0)
			continue;
		if (p->md_virt != NULL && (uint64_t)p->md_virt != p->md_phys) {
			if (bootverbose)
				FUNC10("EFI Runtime entry %d is mapped\n", i);
			goto fail;
		}
		if ((p->md_phys & EFI_PAGE_MASK) != 0) {
			if (bootverbose)
				FUNC10("EFI Runtime entry %d is not aligned\n",
				    i);
			goto fail;
		}
		if (p->md_phys + p->md_pages * EFI_PAGE_SIZE < p->md_phys ||
		    p->md_phys + p->md_pages * EFI_PAGE_SIZE >=
		    VM_MAXUSER_ADDRESS) {
			FUNC10("EFI Runtime entry %d is not in mappable for RT:"
			    "base %#016jx %#jx pages\n",
			    i, (uintmax_t)p->md_phys,
			    (uintmax_t)p->md_pages);
			goto fail;
		}
		if ((p->md_attr & EFI_MD_ATTR_WB) != 0)
			mode = VM_MEMATTR_WRITE_BACK;
		else if ((p->md_attr & EFI_MD_ATTR_WT) != 0)
			mode = VM_MEMATTR_WRITE_THROUGH;
		else if ((p->md_attr & EFI_MD_ATTR_WC) != 0)
			mode = VM_MEMATTR_WRITE_COMBINING;
		else if ((p->md_attr & EFI_MD_ATTR_WP) != 0)
			mode = VM_MEMATTR_WRITE_PROTECTED;
		else if ((p->md_attr & EFI_MD_ATTR_UC) != 0)
			mode = VM_MEMATTR_UNCACHEABLE;
		else {
			if (bootverbose)
				FUNC10("EFI Runtime entry %d mapping "
				    "attributes unsupported\n", i);
			mode = VM_MEMATTR_UNCACHEABLE;
		}
		bits = FUNC8(kernel_pmap, mode, FALSE) | X86_PG_RW |
		    X86_PG_V;
		FUNC1(obj_1t1_pt);
		for (va = p->md_phys, idx = 0; idx < p->md_pages; idx++,
		    va += PAGE_SIZE) {
			pte = FUNC5(va);
			FUNC11(pte, va | bits);
		}
		FUNC2(obj_1t1_pt);
	}

	return (true);

fail:
	FUNC6();
	return (false);
}