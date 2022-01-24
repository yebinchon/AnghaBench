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
typedef  int /*<<< orphan*/  u_short ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct atShortDDP {int /*<<< orphan*/  srcSkt; int /*<<< orphan*/  type; int /*<<< orphan*/  dstSkt; } ;
struct atDDP {int /*<<< orphan*/  srcSkt; int /*<<< orphan*/  srcNode; int /*<<< orphan*/  type; int /*<<< orphan*/  dstSkt; int /*<<< orphan*/  dstNode; int /*<<< orphan*/  dstNet; int /*<<< orphan*/  srcNet; } ;
struct LAP {int type; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ddpSSize ; 
 int ddpSize ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int) ; 
#define  lapDDP 130 
#define  lapKLAP 129 
#define  lapShortDDP 128 

u_int
FUNC7(netdissect_options *ndo,
           register const u_char *bp, u_int length)
{
	register const struct LAP *lp;
	register const struct atDDP *dp;
	register const struct atShortDDP *sdp;
	u_short snet;
	u_int hdrlen;

	if (length < sizeof(*lp)) {
		FUNC1((ndo, " [|llap %u]", length));
		return (length);
	}
	if (!FUNC2(*bp, sizeof(*lp))) {
		FUNC1((ndo, " [|llap]"));
		return (0);	/* cut short by the snapshot length */
	}
	lp = (const struct LAP *)bp;
	bp += sizeof(*lp);
	length -= sizeof(*lp);
	hdrlen = sizeof(*lp);
	switch (lp->type) {

	case lapShortDDP:
		if (length < ddpSSize) {
			FUNC1((ndo, " [|sddp %u]", length));
			return (length);
		}
		if (!FUNC2(*bp, ddpSSize)) {
			FUNC1((ndo, " [|sddp]"));
			return (0);	/* cut short by the snapshot length */
		}
		sdp = (const struct atShortDDP *)bp;
		FUNC1((ndo, "%s.%s",
		    FUNC3(ndo, 0, lp->src), FUNC5(ndo, sdp->srcSkt)));
		FUNC1((ndo, " > %s.%s:",
		    FUNC3(ndo, 0, lp->dst), FUNC5(ndo, sdp->dstSkt)));
		bp += ddpSSize;
		length -= ddpSSize;
		hdrlen += ddpSSize;
		FUNC4(ndo, bp, length, sdp->type, 0, lp->src, sdp->srcSkt);
		break;

	case lapDDP:
		if (length < ddpSize) {
			FUNC1((ndo, " [|ddp %u]", length));
			return (length);
		}
		if (!FUNC2(*bp, ddpSize)) {
			FUNC1((ndo, " [|ddp]"));
			return (0);	/* cut short by the snapshot length */
		}
		dp = (const struct atDDP *)bp;
		snet = FUNC0(&dp->srcNet);
		FUNC1((ndo, "%s.%s", FUNC3(ndo, snet, dp->srcNode),
		    FUNC5(ndo, dp->srcSkt)));
		FUNC1((ndo, " > %s.%s:",
		    FUNC3(ndo, FUNC0(&dp->dstNet), dp->dstNode),
		    FUNC5(ndo, dp->dstSkt)));
		bp += ddpSize;
		length -= ddpSize;
		hdrlen += ddpSize;
		FUNC4(ndo, bp, length, dp->type, snet, dp->srcNode, dp->srcSkt);
		break;

#ifdef notdef
	case lapKLAP:
		klap_print(bp, length);
		break;
#endif

	default:
		FUNC1((ndo, "%d > %d at-lap#%d %u",
		    lp->src, lp->dst, lp->type, length));
		break;
	}
	return (hdrlen);
}