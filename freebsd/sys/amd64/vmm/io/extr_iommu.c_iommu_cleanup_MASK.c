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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * add_tag ; 
 int /*<<< orphan*/ * delete_tag ; 
 int /*<<< orphan*/  host_domain ; 
 int /*<<< orphan*/  pci_add_device ; 
 int /*<<< orphan*/  pci_delete_device ; 

void
FUNC4(void)
{

	if (add_tag != NULL) {
		FUNC0(pci_add_device, add_tag);
		add_tag = NULL;
	}
	if (delete_tag != NULL) {
		FUNC0(pci_delete_device, delete_tag);
		delete_tag = NULL;
	}
	FUNC3();
	FUNC2(host_domain);
	FUNC1();
}