#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* description; struct TYPE_5__* name; struct TYPE_5__* dstaddr; struct TYPE_5__* broadaddr; struct TYPE_5__* netmask; struct TYPE_5__* addr; struct TYPE_5__* next; struct TYPE_5__* addresses; } ;
typedef  TYPE_1__ pcap_if_t ;
typedef  TYPE_1__ pcap_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void
FUNC1(pcap_if_t *alldevs)
{
	pcap_if_t *curdev, *nextdev;
	pcap_addr_t *curaddr, *nextaddr;

	for (curdev = alldevs; curdev != NULL; curdev = nextdev) {
		nextdev = curdev->next;

		/*
		 * Free all addresses.
		 */
		for (curaddr = curdev->addresses; curaddr != NULL; curaddr = nextaddr) {
			nextaddr = curaddr->next;
			if (curaddr->addr)
				FUNC0(curaddr->addr);
			if (curaddr->netmask)
				FUNC0(curaddr->netmask);
			if (curaddr->broadaddr)
				FUNC0(curaddr->broadaddr);
			if (curaddr->dstaddr)
				FUNC0(curaddr->dstaddr);
			FUNC0(curaddr);
		}

		/*
		 * Free the name string.
		 */
		FUNC0(curdev->name);

		/*
		 * Free the description string, if any.
		 */
		if (curdev->description != NULL)
			FUNC0(curdev->description);

		/*
		 * Free the interface.
		 */
		FUNC0(curdev);
	}
}