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
typedef  int /*<<< orphan*/  uint16_t ;
struct amdvi_softc {int pci_cap; } ;

/* Variables and functions */
 int AMDVI_PCI_CAP_NPCACHE ; 
 int /*<<< orphan*/  FUNC0 (struct amdvi_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdvi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdvi_softc*) ; 
 struct amdvi_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int ivhd_count ; 
 int /*<<< orphan*/ * ivhd_devs ; 

__attribute__((used)) static void
FUNC4(uint16_t domain_id, bool create)
{
	struct amdvi_softc *softc;
	int i;

	for (i = 0; i < ivhd_count; i++) {
		softc = FUNC3(ivhd_devs[i]);
		FUNC0(softc, ("softc is NULL"));
		/*
		 * If not present pages are cached, invalidate page after
		 * creating domain.
		 */
#if 0
		if (create && ((softc->pci_cap & AMDVI_PCI_CAP_NPCACHE) == 0))
			continue;
#endif
		FUNC1(softc, domain_id);
		FUNC2(softc);
	}
}