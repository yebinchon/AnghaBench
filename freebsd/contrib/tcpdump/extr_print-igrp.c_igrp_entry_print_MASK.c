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
struct igrprte {int /*<<< orphan*/  igr_hct; int /*<<< orphan*/  igr_ld; int /*<<< orphan*/  igr_rel; int /*<<< orphan*/  igr_mtu; int /*<<< orphan*/  igr_bw; int /*<<< orphan*/  igr_dly; int /*<<< orphan*/ * igr_net; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(netdissect_options *ndo, register const struct igrprte *igr,
    register int is_interior, register int is_exterior)
{
	register u_int delay, bandwidth;
	u_int metric, mtu;

	if (is_interior)
		FUNC2((ndo, " *.%d.%d.%d", igr->igr_net[0],
		    igr->igr_net[1], igr->igr_net[2]));
	else if (is_exterior)
		FUNC2((ndo, " X%d.%d.%d.0", igr->igr_net[0],
		    igr->igr_net[1], igr->igr_net[2]));
	else
		FUNC2((ndo, " %d.%d.%d.0", igr->igr_net[0],
		    igr->igr_net[1], igr->igr_net[2]));

	delay = FUNC1(igr->igr_dly);
	bandwidth = FUNC1(igr->igr_bw);
	metric = bandwidth + delay;
	if (metric > 0xffffff)
		metric = 0xffffff;
	mtu = FUNC0(igr->igr_mtu);

	FUNC2((ndo, " d=%d b=%d r=%d l=%d M=%d mtu=%d in %d hops",
	    10 * delay, bandwidth == 0 ? 0 : 10000000 / bandwidth,
	    igr->igr_rel, igr->igr_ld, metric,
	    mtu, igr->igr_hct));
}