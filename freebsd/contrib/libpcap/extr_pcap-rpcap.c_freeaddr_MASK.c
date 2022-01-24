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
struct pcap_addr {struct pcap_addr* dstaddr; struct pcap_addr* broadaddr; struct pcap_addr* netmask; struct pcap_addr* addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcap_addr*) ; 

__attribute__((used)) static void
FUNC1(struct pcap_addr *addr)
{
	FUNC0(addr->addr);
	FUNC0(addr->netmask);
	FUNC0(addr->broadaddr);
	FUNC0(addr->dstaddr);
	FUNC0(addr);
}