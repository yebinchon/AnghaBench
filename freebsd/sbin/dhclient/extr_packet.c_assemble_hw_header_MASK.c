#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int hlen; struct ether_header* haddr; } ;
struct interface_info {TYPE_1__ hw_address; } ;
struct ether_header {unsigned char* ether_dhost; unsigned char* ether_shost; int /*<<< orphan*/  ether_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHERTYPE_IP ; 
 int ETHER_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,struct ether_header*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int,int) ; 

void
FUNC3(struct interface_info *interface, unsigned char *buf,
    int *bufix)
{
	struct ether_header eh;

	FUNC2(eh.ether_dhost, 0xff, sizeof(eh.ether_dhost));
	if (interface->hw_address.hlen == sizeof(eh.ether_shost))
		FUNC1(eh.ether_shost, interface->hw_address.haddr,
		    sizeof(eh.ether_shost));
	else
		FUNC2(eh.ether_shost, 0x00, sizeof(eh.ether_shost));

	eh.ether_type = FUNC0(ETHERTYPE_IP);

	FUNC1(&buf[*bufix], &eh, ETHER_HEADER_SIZE);
	*bufix += ETHER_HEADER_SIZE;
}