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
struct resource_list_entry {unsigned long count; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 struct resource_list_entry* FUNC0 (struct pci_dev*,int) ; 

unsigned long
FUNC1(struct pci_dev *pdev, int bar)
{
	struct resource_list_entry *rle;

	if ((rle = FUNC0(pdev, bar)) == NULL)
		return (0);
	return (rle->count);
}