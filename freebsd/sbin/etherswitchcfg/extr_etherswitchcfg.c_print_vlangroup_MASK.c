#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int es_nports; } ;
struct TYPE_5__ {scalar_t__ vlan_mode; } ;
struct cfg {TYPE_2__ info; TYPE_1__ conf; int /*<<< orphan*/  fd; } ;
struct TYPE_7__ {int es_vlangroup; int es_vid; int es_member_ports; int es_untagged_ports; } ;
typedef  TYPE_3__ etherswitch_vlangroup_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ETHERSWITCH_VID_MASK ; 
 int ETHERSWITCH_VID_VALID ; 
 scalar_t__ ETHERSWITCH_VLAN_PORT ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  IOETHERSWITCHGETVLANGROUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(struct cfg *cfg, int vlangroup)
{
	etherswitch_vlangroup_t vg;
	int i, comma;
	
	vg.es_vlangroup = vlangroup;
	if (FUNC2(cfg->fd, IOETHERSWITCHGETVLANGROUP, &vg) != 0)
		FUNC1(EX_OSERR, "ioctl(IOETHERSWITCHGETVLANGROUP)");
	if ((vg.es_vid & ETHERSWITCH_VID_VALID) == 0)
		return;
	vg.es_vid &= ETHERSWITCH_VID_MASK;
	FUNC3("vlangroup%d:\n", vlangroup);
	if (cfg->conf.vlan_mode == ETHERSWITCH_VLAN_PORT)
		FUNC3("\tport: %d\n", vg.es_vid);
	else
		FUNC3("\tvlan: %d\n", vg.es_vid);
	FUNC3("\tmembers ");
	comma = 0;
	if (vg.es_member_ports != 0)
		for (i=0; i<cfg->info.es_nports; i++) {
			if ((vg.es_member_ports & FUNC0(i)) != 0) {
				if (comma)
					FUNC3(",");
				FUNC3("%d", i);
				if ((vg.es_untagged_ports & FUNC0(i)) == 0)
					FUNC3("t");
				comma = 1;
			}
		}
	else
		FUNC3("none");
	FUNC3("\n");
}