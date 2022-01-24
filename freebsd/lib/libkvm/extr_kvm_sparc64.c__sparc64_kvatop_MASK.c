#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  tte ;
struct sparc64_tte {void* tte_data; void* tte_vpn; } ;
typedef  int off_t ;
struct TYPE_6__ {TYPE_4__* vmst; } ;
typedef  TYPE_1__ kvm_t ;
typedef  int kvaddr_t ;
struct TYPE_7__ {int vm_tsb_off; int vm_tsb_mask; } ;

/* Variables and functions */
 int KVM_OFF_NOTFOUND ; 
 int FUNC0 (int) ; 
 int SPARC64_MIN_DIRECT_ADDRESS ; 
 int SPARC64_PAGE_MASK ; 
 int SPARC64_PAGE_SHIFT ; 
 int SPARC64_PAGE_SIZE ; 
 int FUNC1 (struct sparc64_tte*) ; 
 int SPARC64_TTE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,struct sparc64_tte*,int) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct sparc64_tte*,int) ; 

__attribute__((used)) static int
FUNC7(kvm_t *kd, kvaddr_t va, off_t *pa)
{
	struct sparc64_tte tte;
	off_t tte_off;
	kvaddr_t vpn;
	off_t pa_off;
	kvaddr_t pg_off;
	int rest;

	pg_off = va & SPARC64_PAGE_MASK;
	if (va >= SPARC64_MIN_DIRECT_ADDRESS)
		pa_off = FUNC0(va) & ~SPARC64_PAGE_MASK;
	else {
		vpn = va >> SPARC64_PAGE_SHIFT;
		tte_off = kd->vmst->vm_tsb_off +
		    ((vpn & kd->vmst->vm_tsb_mask) << SPARC64_TTE_SHIFT);
		if (!FUNC4(kd, tte_off, &tte, sizeof(tte)))
			goto invalid;
		tte.tte_vpn = FUNC5(tte.tte_vpn);
		tte.tte_data = FUNC5(tte.tte_data);
		if (!FUNC6(&tte, va))
			goto invalid;
		pa_off = FUNC1(&tte);
	}
	rest = SPARC64_PAGE_SIZE - pg_off;
	pa_off = FUNC3(kd->vmst, pa_off, rest);
	if (pa_off == KVM_OFF_NOTFOUND)
		goto invalid;
	*pa = pa_off + pg_off;
	return (rest);

invalid:
	FUNC2(kd, 0, "invalid address (%jx)", (uintmax_t)va);
	return (0);
}