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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct igrprte {int dummy; } ;
struct igrphdr {int /*<<< orphan*/  ig_as; int /*<<< orphan*/  ig_ed; int /*<<< orphan*/  ig_vop; int /*<<< orphan*/  ig_nx; int /*<<< orphan*/  ig_ns; int /*<<< orphan*/  ig_ni; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ IGRP_RTE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct igrphdr const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct igrprte const*,int,int) ; 
 int /*<<< orphan*/  op2str ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC8(netdissect_options *ndo, register const u_char *bp, u_int length)
{
	register const struct igrphdr *hdr;
	register const u_char *cp;
	u_int nint, nsys, next;

	hdr = (const struct igrphdr *)bp;
	cp = (const u_char *)(hdr + 1);
	FUNC3((ndo, "igrp:"));

	/* Header */
	FUNC4(*hdr);
	nint = FUNC0(&hdr->ig_ni);
	nsys = FUNC0(&hdr->ig_ns);
	next = FUNC0(&hdr->ig_nx);

	FUNC3((ndo, " %s V%d edit=%d AS=%d (%d/%d/%d)",
	    FUNC7(op2str, "op-#%d", FUNC1(hdr->ig_vop)),
	    FUNC2(hdr->ig_vop),
	    hdr->ig_ed,
	    FUNC0(&hdr->ig_as),
	    nint,
	    nsys,
	    next));

	length -= sizeof(*hdr);
	while (length >= IGRP_RTE_SIZE) {
		if (nint > 0) {
			FUNC5(*cp, IGRP_RTE_SIZE);
			FUNC6(ndo, (const struct igrprte *)cp, 1, 0);
			--nint;
		} else if (nsys > 0) {
			FUNC5(*cp, IGRP_RTE_SIZE);
			FUNC6(ndo, (const struct igrprte *)cp, 0, 0);
			--nsys;
		} else if (next > 0) {
			FUNC5(*cp, IGRP_RTE_SIZE);
			FUNC6(ndo, (const struct igrprte *)cp, 0, 1);
			--next;
		} else {
			FUNC3((ndo, " [extra bytes %d]", length));
			break;
		}
		cp += IGRP_RTE_SIZE;
		length -= IGRP_RTE_SIZE;
	}
	if (nint == 0 && nsys == 0 && next == 0)
		return;
trunc:
	FUNC3((ndo, " [|igrp]"));
}