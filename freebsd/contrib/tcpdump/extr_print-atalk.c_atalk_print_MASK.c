#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct atDDP {int /*<<< orphan*/  srcSkt; int /*<<< orphan*/  srcNode; int /*<<< orphan*/  type; int /*<<< orphan*/  dstSkt; int /*<<< orphan*/  dstNode; int /*<<< orphan*/  dstNet; int /*<<< orphan*/  srcNet; } ;
struct TYPE_7__ {int /*<<< orphan*/  ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ddpSize ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC6(netdissect_options *ndo,
            register const u_char *bp, u_int length)
{
	register const struct atDDP *dp;
	u_short snet;

        if(!ndo->ndo_eflag)
            FUNC1((ndo, "AT "));

	if (length < ddpSize) {
		FUNC1((ndo, " [|ddp %u]", length));
		return;
	}
	if (!FUNC2(*bp, ddpSize)) {
		FUNC1((ndo, " [|ddp]"));
		return;
	}
	dp = (const struct atDDP *)bp;
	snet = FUNC0(&dp->srcNet);
	FUNC1((ndo, "%s.%s", FUNC3(ndo, snet, dp->srcNode),
	       FUNC5(ndo, dp->srcSkt)));
	FUNC1((ndo, " > %s.%s: ",
	       FUNC3(ndo, FUNC0(&dp->dstNet), dp->dstNode),
	       FUNC5(ndo, dp->dstSkt)));
	bp += ddpSize;
	length -= ddpSize;
	FUNC4(ndo, bp, length, dp->type, snet, dp->srcNode, dp->srcSkt);
}