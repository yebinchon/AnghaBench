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
struct netinfo6 {int /*<<< orphan*/  rip6_metric; scalar_t__ rip6_tag; int /*<<< orphan*/  rip6_plen; int /*<<< orphan*/  rip6_dest; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(netdissect_options *ndo, register const struct netinfo6 *ni, int metric)
{
	int l;
	l = FUNC1((ndo, "%s/%d", FUNC2(ndo, &ni->rip6_dest), ni->rip6_plen));
	if (ni->rip6_tag)
		l += FUNC1((ndo, " [%d]", FUNC0(&ni->rip6_tag)));
	if (metric)
		l += FUNC1((ndo, " (%d)", ni->rip6_metric));
	return l;
}