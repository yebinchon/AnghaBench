#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vmstate {int dh_nregions; int vm_nregions; scalar_t__ vm_tsb_off; void* dh_tsb_size; void* dh_tsb_pa; struct vmstate* vm_regions; void* dh_tsb_mask; void* vm_tsb_mask; void* dr_offs; void* dr_size; void* dr_pa; void* dh_hdr_size; } ;
struct sparc64_dump_reg {int dh_nregions; int vm_nregions; scalar_t__ vm_tsb_off; void* dh_tsb_size; void* dh_tsb_pa; struct sparc64_dump_reg* vm_regions; void* dh_tsb_mask; void* vm_tsb_mask; void* dr_offs; void* dr_size; void* dr_pa; void* dh_hdr_size; } ;
struct sparc64_dump_hdr {int dh_nregions; int vm_nregions; scalar_t__ vm_tsb_off; void* dh_tsb_size; void* dh_tsb_pa; struct sparc64_dump_hdr* vm_regions; void* dh_tsb_mask; void* vm_tsb_mask; void* dr_offs; void* dr_size; void* dr_pa; void* dh_hdr_size; } ;
struct TYPE_6__ {int /*<<< orphan*/  program; struct vmstate* vmst; } ;
typedef  TYPE_1__ kvm_t ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 scalar_t__ KVM_OFF_NOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 struct vmstate* FUNC1 (TYPE_1__*,size_t) ; 
 scalar_t__ FUNC2 (struct vmstate*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,struct vmstate*,size_t) ; 
 int /*<<< orphan*/  _sparc64_reg_cmp ; 
 int FUNC4 (int) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct vmstate*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmstate*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(kvm_t *kd)
{
	struct sparc64_dump_hdr hdr;
	struct sparc64_dump_reg	*regs;
	struct vmstate *vm;
	size_t regsz;
	int i;

	vm = (struct vmstate *)FUNC1(kd, sizeof(*vm));
	if (vm == NULL) {
		FUNC0(kd, kd->program, "cannot allocate vm");
		return (-1);
	}
	kd->vmst = vm;

	if (!FUNC3(kd, 0, &hdr, sizeof(hdr)))
		goto fail_vm;
	hdr.dh_hdr_size = FUNC5(hdr.dh_hdr_size);
	hdr.dh_tsb_pa = FUNC5(hdr.dh_tsb_pa);
	hdr.dh_tsb_size = FUNC5(hdr.dh_tsb_size);
	hdr.dh_tsb_mask = FUNC5(hdr.dh_tsb_mask);
	hdr.dh_nregions = FUNC4(hdr.dh_nregions);

	regsz = hdr.dh_nregions * sizeof(*regs);
	regs = FUNC1(kd, regsz);
	if (regs == NULL) {
		FUNC0(kd, kd->program, "cannot allocate regions");
		goto fail_vm;
	}
	if (!FUNC3(kd, sizeof(hdr), regs, regsz))
		goto fail_regs;
	for (i = 0; i < hdr.dh_nregions; i++) {
		regs[i].dr_pa = FUNC5(regs[i].dr_pa);
		regs[i].dr_size = FUNC5(regs[i].dr_size);
		regs[i].dr_offs = FUNC5(regs[i].dr_offs);
	}
	FUNC7(regs, hdr.dh_nregions, sizeof(*regs), _sparc64_reg_cmp);

	vm->vm_tsb_mask = hdr.dh_tsb_mask;
	vm->vm_regions = regs;
	vm->vm_nregions = hdr.dh_nregions;
	vm->vm_tsb_off = FUNC2(vm, hdr.dh_tsb_pa, hdr.dh_tsb_size);
	if (vm->vm_tsb_off == KVM_OFF_NOTFOUND) {
		FUNC0(kd, kd->program, "tsb not found in dump");
		goto fail_regs;
	}
	return (0);

fail_regs:
	FUNC6(regs);
fail_vm:
	FUNC6(vm);
	return (-1);
}