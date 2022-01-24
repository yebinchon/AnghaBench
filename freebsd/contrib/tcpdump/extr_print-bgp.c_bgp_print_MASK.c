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
typedef  int uint16_t ;
typedef  int u_char ;
struct bgp {int /*<<< orphan*/  bgp_type; int /*<<< orphan*/  bgp_len; } ;
struct TYPE_5__ {int const* ndo_snapend; int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;
typedef  int /*<<< orphan*/  marker ;

/* Variables and functions */
 int BGP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int const,int) ; 
 scalar_t__ FUNC2 (int const,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  bgp_msg_values ; 
 scalar_t__ FUNC4 (int const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bgp*,int const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void
FUNC8(netdissect_options *ndo,
          const u_char *dat, int length)
{
	const u_char *p;
	const u_char *ep;
	const u_char *start;
	const u_char marker[] = {
		0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
		0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
	};
	struct bgp bgp;
	uint16_t hlen;

	ep = dat + length;
	if (ndo->ndo_snapend < dat + length)
		ep = ndo->ndo_snapend;

	FUNC0((ndo, ": BGP"));

        if (ndo->ndo_vflag < 1) /* lets be less chatty */
                return;

	p = dat;
	start = p;
	while (p < ep) {
		if (!FUNC2(p[0], 1))
			break;
		if (p[0] != 0xff) {
			p++;
			continue;
		}

		if (!FUNC2(p[0], sizeof(marker)))
			break;
		if (FUNC4(p, marker, sizeof(marker)) != 0) {
			p++;
			continue;
		}

		/* found BGP header */
		FUNC1(p[0], BGP_SIZE);	/*XXX*/
		FUNC5(&bgp, p, BGP_SIZE);

		if (start != p)
			FUNC0((ndo, " [|BGP]"));

		hlen = FUNC6(bgp.bgp_len);
		if (hlen < BGP_SIZE) {
			FUNC0((ndo, "\n[|BGP Bogus header length %u < %u]", hlen,
			    BGP_SIZE));
			break;
		}

		if (FUNC2(p[0], hlen)) {
			if (!FUNC3(ndo, p, hlen))
				return;
			p += hlen;
			start = p;
		} else {
			FUNC0((ndo, "\n[|BGP %s]",
			       FUNC7(bgp_msg_values,
					  "Unknown Message Type",
					  bgp.bgp_type)));
			break;
		}
	}

	return;

trunc:
	FUNC0((ndo, " [|BGP]"));
}