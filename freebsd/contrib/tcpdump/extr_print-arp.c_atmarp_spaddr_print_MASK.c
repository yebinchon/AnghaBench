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
struct atmarp_pkthdr {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atmarp_pkthdr const*) ; 
 int FUNC1 (struct atmarp_pkthdr const*) ; 
 scalar_t__ ETHERTYPE_IP ; 
 scalar_t__ ETHERTYPE_TRAIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo,
		    const struct atmarp_pkthdr *ap, u_short pro)
{
	if (pro != ETHERTYPE_IP && pro != ETHERTYPE_TRAIL)
		FUNC2((ndo, "<wrong proto type>"));
	else if (FUNC1(ap) != 4)
		FUNC2((ndo, "<wrong splen>"));
	else
		FUNC2((ndo, "%s", FUNC3(ndo, FUNC0(ap))));
}