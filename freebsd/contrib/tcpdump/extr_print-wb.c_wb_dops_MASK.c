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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct pkt_dop {int dummy; } ;
struct dophdr {int dh_type; int /*<<< orphan*/  dh_ts; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 struct dophdr* FUNC0 (struct dophdr const*) ; 
 int DT_HOLE ; 
 int DT_MAXTYPE ; 
 int DT_SKIP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dophdr const) ; 
 int /*<<< orphan*/ * dopstr ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo, const struct pkt_dop *dop,
        uint32_t ss, uint32_t es)
{
	const struct dophdr *dh = (const struct dophdr *)((const u_char *)dop + sizeof(*dop));

	FUNC2((ndo, " <"));
	for ( ; ss <= es; ++ss) {
		int t;

		if (!FUNC3(*dh)) {
			FUNC2((ndo, "%s", tstr));
			break;
		}
		t = dh->dh_type;

		if (t > DT_MAXTYPE)
			FUNC2((ndo, " dop-%d!", t));
		else {
			FUNC2((ndo, " %s", dopstr[t]));
			if (t == DT_SKIP || t == DT_HOLE) {
				uint32_t ts = FUNC1(&dh->dh_ts);
				FUNC2((ndo, "%d", ts - ss + 1));
				if (ss > ts || ts > es) {
					FUNC2((ndo, "[|]"));
					if (ts < ss)
						return (0);
				}
				ss = ts;
			}
		}
		dh = FUNC0(dh);
	}
	FUNC2((ndo, " >"));
	return (0);
}