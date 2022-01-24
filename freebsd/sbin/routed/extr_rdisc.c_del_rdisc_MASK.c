#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct interface {scalar_t__ int_rdisc_cnt; int /*<<< orphan*/  int_name; TYPE_1__ int_rdisc_timer; } ;
struct dr {scalar_t__ dr_ts; struct interface* dr_ifp; scalar_t__ dr_life; int /*<<< orphan*/  dr_gate; } ;
typedef  int /*<<< orphan*/  naddr ;

/* Variables and functions */
 size_t MAX_ADS ; 
 scalar_t__ MAX_SOLICITATIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dr* drs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC4(struct dr *drp)
{
	struct interface *ifp;
	naddr gate;
	int i;


	FUNC0(gate = drp->dr_gate, 0);
	drp->dr_ts = 0;
	drp->dr_life = 0;


	/* Count the other discovered routes on the interface.
	 */
	i = 0;
	ifp = drp->dr_ifp;
	for (drp = drs; drp < &drs[MAX_ADS]; drp++) {
		if (drp->dr_ts != 0
		    && drp->dr_ifp == ifp)
			i++;
	}

	/* If that was the last good discovered router on the interface,
	 * then solicit a new one.
	 * This is contrary to RFC 1256, but defends against black holes.
	 */
	if (i != 0) {
		FUNC3("discovered router %s via %s"
			  " is bad--have %d remaining",
			  FUNC1(gate), ifp->int_name, i);
	} else if (ifp->int_rdisc_cnt >= MAX_SOLICITATIONS) {
		FUNC3("last discovered router %s via %s"
			  " is bad--re-solicit",
			  FUNC1(gate), ifp->int_name);
		ifp->int_rdisc_cnt = 0;
		ifp->int_rdisc_timer.tv_sec = 0;
		FUNC2();
	} else {
		FUNC3("last discovered router %s via %s"
			  " is bad--wait to solicit",
			  FUNC1(gate), ifp->int_name);
	}
}