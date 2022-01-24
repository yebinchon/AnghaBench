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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u_char ;
struct ipcomp {int /*<<< orphan*/  comp_cpi; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ipcomp const) ; 

void
FUNC3(netdissect_options *ndo, register const u_char *bp)
{
	register const struct ipcomp *ipcomp;
	uint16_t cpi;

	ipcomp = (const struct ipcomp *)bp;
	FUNC2(*ipcomp);
	cpi = FUNC0(&ipcomp->comp_cpi);

	FUNC1((ndo, "IPComp(cpi=0x%04x)", cpi));

	/*
	 * XXX - based on the CPI, we could decompress the packet here.
	 * Packet buffer management is a headache (if we decompress,
	 * packet will become larger).
	 *
	 * We would decompress the packet and then call a routine that,
	 * based on ipcomp->comp_nxt, dissects the decompressed data.
	 *
	 * Until we do that, however, we just return -1, so that
	 * the loop that processes "protocol"/"next header" types
	 * stops - there's nothing more it can do with a compressed
	 * payload.
	 */
	return;

trunc:
	FUNC1((ndo, "[|IPCOMP]"));
	return;
}