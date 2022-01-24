#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {scalar_t__ sin_family; int /*<<< orphan*/  sin_addr; } ;
struct pcap_addr {struct pcap_addr* next; scalar_t__ addr; } ;
struct l2_packet_data {int /*<<< orphan*/  ifname; } ;
struct TYPE_4__ {struct pcap_addr* addresses; int /*<<< orphan*/  name; struct TYPE_4__* next; } ;
typedef  TYPE_1__ pcap_if_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (TYPE_1__**,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

int FUNC6(struct l2_packet_data *l2, char *buf, size_t len)
{
	pcap_if_t *devs, *dev;
	struct pcap_addr *addr;
	struct sockaddr_in *saddr;
	int found = 0;
	char err[PCAP_ERRBUF_SIZE + 1];

	if (FUNC3(&devs, err) < 0) {
		FUNC5(MSG_DEBUG, "pcap_findalldevs: %s\n", err);
		return -1;
	}

	for (dev = devs; dev && !found; dev = dev->next) {
		if (FUNC1(dev->name, l2->ifname) != 0)
			continue;

		addr = dev->addresses;
		while (addr) {
			saddr = (struct sockaddr_in *) addr->addr;
			if (saddr && saddr->sin_family == AF_INET) {
				FUNC2(buf, FUNC0(saddr->sin_addr),
					   len);
				found = 1;
				break;
			}
			addr = addr->next;
		}
	}

	FUNC4(devs);

	return found ? 0 : -1;
}