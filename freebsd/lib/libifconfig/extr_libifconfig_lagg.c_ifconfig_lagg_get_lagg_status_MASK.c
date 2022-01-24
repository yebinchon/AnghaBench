#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ifconfig_lagg_status {TYPE_5__* rf; TYPE_5__* ro; TYPE_5__* ra; } ;
struct TYPE_8__ {int ra_size; int /*<<< orphan*/  ra_ifname; scalar_t__ rf_flags; int /*<<< orphan*/  rf_ifname; int /*<<< orphan*/  ro_ifname; int /*<<< orphan*/  ra_port; } ;
struct _ifconfig_lagg_status {TYPE_5__ ra; TYPE_5__ rf; TYPE_5__ ro; int /*<<< orphan*/  rpbuf; struct ifconfig_lagg_status l; } ;
struct TYPE_6__ {int /*<<< orphan*/  errcode; int /*<<< orphan*/  errtype; } ;
struct TYPE_7__ {TYPE_1__ error; } ;
typedef  TYPE_2__ ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  OTHER ; 
 int /*<<< orphan*/  SIOCGLAGG ; 
 int /*<<< orphan*/  SIOCGLAGGFLAGS ; 
 int /*<<< orphan*/  SIOCGLAGGOPTS ; 
 struct _ifconfig_lagg_status* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct _ifconfig_lagg_status*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC4(ifconfig_handle_t *h,
    const char *name, struct ifconfig_lagg_status **lagg_status)
{
	struct _ifconfig_lagg_status *ls;

	ls = FUNC0(1, sizeof(struct _ifconfig_lagg_status));
	if (ls == NULL) {
		h->error.errtype = OTHER;
		h->error.errcode = ENOMEM;
		return (-1);
	}
	ls->l.ra = &ls->ra;
	ls->l.ro = &ls->ro;
	ls->l.rf = &ls->rf;
	*lagg_status = &ls->l;

	ls->ra.ra_port = ls->rpbuf;
	ls->ra.ra_size = sizeof(ls->rpbuf);

	FUNC3(ls->ro.ro_ifname, name, sizeof(ls->ro.ro_ifname));
	FUNC2(h, AF_LOCAL, SIOCGLAGGOPTS, &ls->ro);

	FUNC3(ls->rf.rf_ifname, name, sizeof(ls->rf.rf_ifname));
	if (FUNC2(h, AF_LOCAL, SIOCGLAGGFLAGS, &ls->rf) != 0) {
		ls->rf.rf_flags = 0;
	}

	FUNC3(ls->ra.ra_ifname, name, sizeof(ls->ra.ra_ifname));
	if (FUNC2(h, AF_LOCAL, SIOCGLAGG, &ls->ra) != 0) {
		FUNC1(ls);
		return (-1);
	}

	return (0);
}