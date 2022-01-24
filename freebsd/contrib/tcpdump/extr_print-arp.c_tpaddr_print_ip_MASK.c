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
typedef  scalar_t__ u_short ;
struct arp_pkthdr {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ ETHERTYPE_IP ; 
 scalar_t__ ETHERTYPE_TRAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct arp_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC2 (struct arp_pkthdr const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo,
	        const struct arp_pkthdr *ap, u_short pro)
{
	if (pro != ETHERTYPE_IP && pro != ETHERTYPE_TRAIL)
		FUNC0((ndo, "<wrong proto type>"));
	else if (FUNC1(ap) != 4)
		FUNC0((ndo, "<wrong len>"));
	else
		FUNC0((ndo, "%s", FUNC3(ndo, FUNC2(ap))));
}