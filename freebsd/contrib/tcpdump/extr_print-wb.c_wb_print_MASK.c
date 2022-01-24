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
typedef  int u_int ;
struct pkt_rreq {int dummy; } ;
struct pkt_rrep {int dummy; } ;
struct pkt_preq {int dummy; } ;
struct pkt_prep {int dummy; } ;
struct pkt_id {int dummy; } ;
struct pkt_hdr {int ph_type; scalar_t__ ph_flags; } ;
struct pkt_dop {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pkt_hdr const) ; 
#define  PT_DRAWOP 134 
#define  PT_ID 133 
#define  PT_KILL 132 
#define  PT_PREP 131 
#define  PT_PREQ 130 
#define  PT_RREP 129 
#define  PT_RREQ 128 
 int /*<<< orphan*/  tstr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pkt_dop const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pkt_id const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct pkt_prep const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct pkt_preq const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct pkt_rrep const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct pkt_rreq const*,int) ; 

void
FUNC8(netdissect_options *ndo,
         register const void *hdr, register u_int len)
{
	register const struct pkt_hdr *ph;

	ph = (const struct pkt_hdr *)hdr;
	if (len < sizeof(*ph) || !FUNC1(*ph)) {
		FUNC0((ndo, "%s", tstr));
		return;
	}
	len -= sizeof(*ph);

	if (ph->ph_flags)
		FUNC0((ndo, "*"));
	switch (ph->ph_type) {

	case PT_KILL:
		FUNC0((ndo, " wb-kill"));
		return;

	case PT_ID:
		if (FUNC3(ndo, (const struct pkt_id *)(ph + 1), len) >= 0)
			return;
		FUNC0((ndo, "%s", tstr));
		break;

	case PT_RREQ:
		if (FUNC7(ndo, (const struct pkt_rreq *)(ph + 1), len) >= 0)
			return;
		FUNC0((ndo, "%s", tstr));
		break;

	case PT_RREP:
		if (FUNC6(ndo, (const struct pkt_rrep *)(ph + 1), len) >= 0)
			return;
		FUNC0((ndo, "%s", tstr));
		break;

	case PT_DRAWOP:
		if (FUNC2(ndo, (const struct pkt_dop *)(ph + 1), len) >= 0)
			return;
		FUNC0((ndo, "%s", tstr));
		break;

	case PT_PREQ:
		if (FUNC5(ndo, (const struct pkt_preq *)(ph + 1), len) >= 0)
			return;
		FUNC0((ndo, "%s", tstr));
		break;

	case PT_PREP:
		if (FUNC4(ndo, (const struct pkt_prep *)(ph + 1), len) >= 0)
			return;
		FUNC0((ndo, "%s", tstr));
		break;

	default:
		FUNC0((ndo, " wb-%d!", ph->ph_type));
		return;
	}
}