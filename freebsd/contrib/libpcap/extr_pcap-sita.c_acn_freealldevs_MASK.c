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
 TYPE_1__* acn_if_list ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(void) {

	pcap_if_t	*iff, *next_iff;
	pcap_addr_t	*addr, *next_addr;

	for (iff = acn_if_list; iff != NULL; iff = next_iff) {
		next_iff = iff->next;
		for (addr = iff->addresses; addr != NULL; addr = next_addr) {
			next_addr = addr->next;
			if (addr->addr)			FUNC0(addr->addr);
			if (addr->netmask)		FUNC0(addr->netmask);
			if (addr->broadaddr)	FUNC0(addr->broadaddr);
			if (addr->dstaddr)		FUNC0(addr->dstaddr);
			FUNC0(addr);
		}
		if (iff->name)			FUNC0(iff->name);
		if (iff->description)	FUNC0(iff->description);
		FUNC0(iff);
	}
}