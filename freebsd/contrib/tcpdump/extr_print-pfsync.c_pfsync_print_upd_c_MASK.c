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
typedef  int /*<<< orphan*/  uintmax_t ;
struct pfsync_upd_c {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  creatorid; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(netdissect_options *ndo, const void *bp)
{
	const struct pfsync_upd_c *u = bp;

	FUNC0((ndo, "\n\tid: %016jx creatorid: %08x",
	    (uintmax_t)FUNC1(u->id), FUNC2(u->creatorid)));
	if (ndo->ndo_vflag > 2) {
		FUNC0((ndo, "\n\tTCP? :"));
		FUNC3(ndo, &u->src, &u->dst, IPPROTO_TCP);
	}
}