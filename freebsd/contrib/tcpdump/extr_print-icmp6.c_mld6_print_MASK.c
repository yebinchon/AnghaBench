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
typedef  int /*<<< orphan*/  u_char ;
struct mld6_hdr {int /*<<< orphan*/  mld6_addr; int /*<<< orphan*/  mld6_maxdelay; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(netdissect_options *ndo, const u_char *bp)
{
	const struct mld6_hdr *mp = (const struct mld6_hdr *)bp;
	const u_char *ep;

	/* 'ep' points to the end of available data. */
	ep = ndo->ndo_snapend;

	if ((const u_char *)mp + sizeof(*mp) > ep)
		return;

	FUNC1((ndo,"max resp delay: %d ", FUNC0(&mp->mld6_maxdelay)));
	FUNC1((ndo,"addr: %s", FUNC2(ndo, &mp->mld6_addr)));
}