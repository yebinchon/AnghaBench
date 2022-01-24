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
typedef  int vm_paddr_t ;
typedef  size_t uint8_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct vtdmap {int /*<<< orphan*/  ext_cap; } ;
struct domain {int addrwidth; int id; int /*<<< orphan*/  ptp; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int VTD_CTX_PRESENT ; 
 int VTD_CTX_TT_ALL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int** ctx_tables ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 struct vtdmap* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *arg, uint16_t rid)
{
	int idx;
	uint64_t *ctxp;
	struct domain *dom = arg;
	vm_paddr_t pt_paddr;
	struct vtdmap *vtdmap;
	uint8_t bus;

	bus = FUNC0(rid);
	ctxp = ctx_tables[bus];
	pt_paddr = FUNC5(dom->ptp);
	idx = FUNC2(rid);

	if (ctxp[idx] & VTD_CTX_PRESENT) {
		FUNC3("vtd_add_device: device %x is already owned by "
		      "domain %d", rid,
		      (uint16_t)(ctxp[idx + 1] >> 8));
	}

	if ((vtdmap = FUNC4(rid)) == NULL)
		FUNC3("vtd_add_device: device %x is not in scope for "
		      "any DMA remapping unit", rid);

	/*
	 * Order is important. The 'present' bit is set only after all fields
	 * of the context pointer are initialized.
	 */
	ctxp[idx + 1] = dom->addrwidth | (dom->id << 8);

	if (FUNC1(vtdmap->ext_cap))
		ctxp[idx] = VTD_CTX_TT_ALL;
	else
		ctxp[idx] = 0;

	ctxp[idx] |= pt_paddr | VTD_CTX_PRESENT;

	/*
	 * 'Not Present' entries are not cached in either the Context Cache
	 * or in the IOTLB, so there is no need to invalidate either of them.
	 */
}