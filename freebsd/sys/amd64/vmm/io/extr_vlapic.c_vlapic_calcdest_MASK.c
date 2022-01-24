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
struct vm {int dummy; } ;
struct vlapic {TYPE_1__* apic_page; } ;
typedef  int /*<<< orphan*/  cpuset_t ;
struct TYPE_2__ {int dfr; int ldr; } ;

/* Variables and functions */
 int APIC_DFR_MODEL_CLUSTER ; 
 int APIC_DFR_MODEL_FLAT ; 
 int APIC_DFR_MODEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vlapic*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vm*) ; 
 int FUNC7 (struct vm*,int) ; 
 int FUNC8 (struct vm*) ; 
 struct vlapic* FUNC9 (struct vm*,int) ; 
 scalar_t__ FUNC10 (struct vlapic*) ; 

__attribute__((used)) static void
FUNC11(struct vm *vm, cpuset_t *dmask, uint32_t dest, bool phys,
    bool lowprio, bool x2apic_dest)
{
	struct vlapic *vlapic;
	uint32_t dfr, ldr, ldest, cluster;
	uint32_t mda_flat_ldest, mda_cluster_ldest, mda_ldest, mda_cluster_id;
	cpuset_t amask;
	int vcpuid;

	if ((x2apic_dest && dest == 0xffffffff) ||
	    (!x2apic_dest && dest == 0xff)) {
		/*
		 * Broadcast in both logical and physical modes.
		 */
		*dmask = FUNC6(vm);
		return;
	}

	if (phys) {
		/*
		 * Physical mode: destination is APIC ID.
		 */
		FUNC4(dmask);
		vcpuid = FUNC7(vm, dest);
		amask = FUNC6(vm);
		if (vcpuid < FUNC8(vm) && FUNC2(vcpuid, &amask))
			FUNC3(vcpuid, dmask);
	} else {
		/*
		 * In the "Flat Model" the MDA is interpreted as an 8-bit wide
		 * bitmask. This model is only available in the xAPIC mode.
		 */
		mda_flat_ldest = dest & 0xff;

		/*
		 * In the "Cluster Model" the MDA is used to identify a
		 * specific cluster and a set of APICs in that cluster.
		 */
		if (x2apic_dest) {
			mda_cluster_id = dest >> 16;
			mda_cluster_ldest = dest & 0xffff;
		} else {
			mda_cluster_id = (dest >> 4) & 0xf;
			mda_cluster_ldest = dest & 0xf;
		}

		/*
		 * Logical mode: match each APIC that has a bit set
		 * in its LDR that matches a bit in the ldest.
		 */
		FUNC4(dmask);
		amask = FUNC6(vm);
		while ((vcpuid = FUNC1(&amask)) != 0) {
			vcpuid--;
			FUNC0(vcpuid, &amask);

			vlapic = FUNC9(vm, vcpuid);
			dfr = vlapic->apic_page->dfr;
			ldr = vlapic->apic_page->ldr;

			if ((dfr & APIC_DFR_MODEL_MASK) ==
			    APIC_DFR_MODEL_FLAT) {
				ldest = ldr >> 24;
				mda_ldest = mda_flat_ldest;
			} else if ((dfr & APIC_DFR_MODEL_MASK) ==
			    APIC_DFR_MODEL_CLUSTER) {
				if (FUNC10(vlapic)) {
					cluster = ldr >> 16;
					ldest = ldr & 0xffff;
				} else {
					cluster = ldr >> 28;
					ldest = (ldr >> 24) & 0xf;
				}
				if (cluster != mda_cluster_id)
					continue;
				mda_ldest = mda_cluster_ldest;
			} else {
				/*
				 * Guest has configured a bad logical
				 * model for this vcpu - skip it.
				 */
				FUNC5(vlapic, "vlapic has bad logical "
				    "model %x - cannot deliver interrupt", dfr);
				continue;
			}

			if ((mda_ldest & ldest) != 0) {
				FUNC3(vcpuid, dmask);
				if (lowprio)
					break;
			}
		}
	}
}