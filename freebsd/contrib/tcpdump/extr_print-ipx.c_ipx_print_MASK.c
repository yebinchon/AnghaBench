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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct ipxHdr {int /*<<< orphan*/  length; int /*<<< orphan*/  dstSkt; int /*<<< orphan*/  dstNode; int /*<<< orphan*/  dstNet; int /*<<< orphan*/  srcSkt; int /*<<< orphan*/  srcNode; int /*<<< orphan*/  srcNet; } ;
struct TYPE_5__ {int /*<<< orphan*/  ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int ipxSize ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct ipxHdr const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(netdissect_options *ndo, const u_char *p, u_int length)
{
	const struct ipxHdr *ipx = (const struct ipxHdr *)p;

	if (!ndo->ndo_eflag)
		FUNC2((ndo, "IPX "));

	FUNC3(ipx->srcSkt);
	FUNC2((ndo, "%s.%04x > ",
		     FUNC5(FUNC1(ipx->srcNet), ipx->srcNode),
		     FUNC0(&ipx->srcSkt)));

	FUNC2((ndo, "%s.%04x: ",
		     FUNC5(FUNC1(ipx->dstNet), ipx->dstNode),
		     FUNC0(&ipx->dstSkt)));

	/* take length from ipx header */
	FUNC3(ipx->length);
	length = FUNC0(&ipx->length);

	FUNC4(ndo, ipx, p + ipxSize, length - ipxSize);
	return;
trunc:
	FUNC2((ndo, "[|ipx %d]", length));
}