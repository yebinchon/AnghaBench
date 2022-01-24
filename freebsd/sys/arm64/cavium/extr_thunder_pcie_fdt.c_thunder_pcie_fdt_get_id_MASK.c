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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  enum pci_id_type { ____Placeholder_pci_id_type } pci_id_type ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int PCI_ID_MSI ; 
 int PCI_RID_DOMAIN_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,uintptr_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,uintptr_t*) ; 

__attribute__((used)) static int
FUNC6(device_t pci, device_t child, enum pci_id_type type,
    uintptr_t *id)
{
	phandle_t node;
	int bsf;

	if (type != PCI_ID_MSI)
		return (FUNC5(pci, child, type, id));

	node = FUNC2(pci);
	if (FUNC0(node, "msi-map"))
		return (FUNC1(pci, child, type, id));

	bsf = FUNC4(child);
	*id = (FUNC3(child) << PCI_RID_DOMAIN_SHIFT) | bsf;

	return (0);
}