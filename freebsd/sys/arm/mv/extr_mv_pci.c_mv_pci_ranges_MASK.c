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
struct mv_pci_range {int dummy; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_pci_range*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct mv_pci_range*,struct mv_pci_range*) ; 

__attribute__((used)) static int
FUNC3(phandle_t node, struct mv_pci_range *io_space,
    struct mv_pci_range *mem_space)
{
	int err;

	FUNC0("Processing PCI node: %x\n", node);
	if ((err = FUNC2(node, io_space, mem_space)) != 0) {
		FUNC0("could not decode parent PCI node 'ranges'\n");
		return (err);
	}

	FUNC0("Post fixup dump:\n");
	FUNC1(io_space);
	FUNC1(mem_space);
	return (0);
}