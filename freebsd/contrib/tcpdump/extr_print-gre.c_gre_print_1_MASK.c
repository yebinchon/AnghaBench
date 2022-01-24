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
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int ndo_vflag; scalar_t__ ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
#define  ETHERTYPE_PPP 128 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int GRE_AP ; 
 int GRE_KP ; 
 int GRE_SP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ethertype_values ; 
 int /*<<< orphan*/  gre_flag_values ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC7(netdissect_options *ndo, const u_char *bp, u_int length)
{
	u_int len = length;
	uint16_t flags, prot;

	flags = FUNC0(bp);
	len -= 2;
	bp += 2;

	if (ndo->ndo_vflag)
            FUNC2((ndo, ", Flags [%s]",
                   FUNC4(gre_flag_values,"none",flags)));

	FUNC3(*bp, 2);
	if (len < 2)
		goto trunc;
	prot = FUNC0(bp);
	len -= 2;
	bp += 2;


	if (flags & GRE_KP) {
		uint32_t k;

		FUNC3(*bp, 4);
		if (len < 4)
			goto trunc;
		k = FUNC1(bp);
		FUNC2((ndo, ", call %d", k & 0xffff));
		len -= 4;
		bp += 4;
	}

	if (flags & GRE_SP) {
		FUNC3(*bp, 4);
		if (len < 4)
			goto trunc;
		FUNC2((ndo, ", seq %u", FUNC1(bp)));
		bp += 4;
		len -= 4;
	}

	if (flags & GRE_AP) {
		FUNC3(*bp, 4);
		if (len < 4)
			goto trunc;
		FUNC2((ndo, ", ack %u", FUNC1(bp)));
		bp += 4;
		len -= 4;
	}

	if ((flags & GRE_SP) == 0)
		FUNC2((ndo, ", no-payload"));

        if (ndo->ndo_eflag)
            FUNC2((ndo, ", proto %s (0x%04x)",
                   FUNC6(ethertype_values,"unknown",prot),
                   prot));

        FUNC2((ndo, ", length %u",length));

        if ((flags & GRE_SP) == 0)
            return;

        if (ndo->ndo_vflag < 1)
            FUNC2((ndo, ": ")); /* put in a colon as protocol demarc */
        else
            FUNC2((ndo, "\n\t")); /* if verbose go multiline */

	switch (prot) {
	case ETHERTYPE_PPP:
		FUNC5(ndo, bp, len);
		break;
	default:
		FUNC2((ndo, "gre-proto-0x%x", prot));
		break;
	}
	return;

trunc:
	FUNC2((ndo, "%s", tstr));
}