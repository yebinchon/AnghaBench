#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ vlan_mode; } ;
struct cfg {scalar_t__ mediatypes; TYPE_1__ conf; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  p ;
struct TYPE_7__ {int* ifm_ulist; int ifm_count; int ifm_current; scalar_t__ ifm_active; int ifm_status; } ;
struct TYPE_8__ {int es_port; int es_pvid; int es_nleds; size_t* es_led; TYPE_2__ es_ifmr; int /*<<< orphan*/  es_flags; } ;
typedef  TYPE_3__ etherswitch_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETHERSWITCH_PORT_FLAGS_BITS ; 
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int IFMEDIAREQ_NULISTENTRIES ; 
 int IFM_ACTIVE ; 
 int /*<<< orphan*/  IOETHERSWITCHGETPORT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 char** ledstyles ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 

__attribute__((used)) static void
FUNC7(struct cfg *cfg, int port)
{
	etherswitch_port_t p;
	int ifm_ulist[IFMEDIAREQ_NULISTENTRIES];
	int i;

	FUNC0(&p, sizeof(p));
	p.es_port = port;
	p.es_ifmr.ifm_ulist = ifm_ulist;
	p.es_ifmr.ifm_count = IFMEDIAREQ_NULISTENTRIES;
	if (FUNC2(cfg->fd, IOETHERSWITCHGETPORT, &p) != 0)
		FUNC1(EX_OSERR, "ioctl(IOETHERSWITCHGETPORT)");
	FUNC5("port%d:\n", port);
	if (cfg->conf.vlan_mode == ETHERSWITCH_VLAN_DOT1Q)
		FUNC5("\tpvid: %d\n", p.es_pvid);
	FUNC4("\tflags", p.es_flags, ETHERSWITCH_PORT_FLAGS_BITS);
	FUNC5("\n");
	if (p.es_nleds) {
		FUNC5("\tled: ");
		for (i = 0; i < p.es_nleds; i++) {
			FUNC5("%d:%s%s", i+1, ledstyles[p.es_led[i]], (i==p.es_nleds-1)?"":" ");
		}
		FUNC5("\n");
	}
	FUNC5("\tmedia: ");
	FUNC3(p.es_ifmr.ifm_current, 1);
	if (p.es_ifmr.ifm_active != p.es_ifmr.ifm_current) {
		FUNC6(' ');
		FUNC6('(');
		FUNC3(p.es_ifmr.ifm_active, 0);
		FUNC6(')');
	}
	FUNC6('\n');
	FUNC5("\tstatus: %s\n", (p.es_ifmr.ifm_status & IFM_ACTIVE) != 0 ? "active" : "no carrier");
	if (cfg->mediatypes) {
		FUNC5("\tsupported media:\n");
		if (p.es_ifmr.ifm_count > IFMEDIAREQ_NULISTENTRIES)
			p.es_ifmr.ifm_count = IFMEDIAREQ_NULISTENTRIES;
		for (i=0; i<p.es_ifmr.ifm_count; i++) {
			FUNC5("\t\tmedia ");
			FUNC3(ifm_ulist[i], 0);
			FUNC6('\n');
		}
	}
}