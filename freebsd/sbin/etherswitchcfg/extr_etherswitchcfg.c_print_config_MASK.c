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
struct TYPE_2__ {int cmd; int vlan_mode; int /*<<< orphan*/  switch_macaddr; } ;
struct cfg {char* controlfile; TYPE_1__ conf; } ;

/* Variables and functions */
 int ETHERSWITCH_CONF_SWITCH_MACADDR ; 
 int ETHERSWITCH_CONF_VLAN_MODE ; 
#define  ETHERSWITCH_VLAN_DOT1Q 132 
#define  ETHERSWITCH_VLAN_DOT1Q_4K 131 
#define  ETHERSWITCH_VLAN_DOUBLE_TAG 130 
#define  ETHERSWITCH_VLAN_ISL 129 
#define  ETHERSWITCH_VLAN_PORT 128 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void
FUNC3(struct cfg *cfg)
{
	const char *c;

	/* Get the device name. */
	c = FUNC2(cfg->controlfile, '/');
	if (c != NULL)
		c = c + 1;
	else
		c = cfg->controlfile;

	/* Print VLAN mode. */
	if (cfg->conf.cmd & ETHERSWITCH_CONF_VLAN_MODE) {
		FUNC1("%s: VLAN mode: ", c);
		switch (cfg->conf.vlan_mode) {
		case ETHERSWITCH_VLAN_ISL:
			FUNC1("ISL\n");
			break;
		case ETHERSWITCH_VLAN_PORT:
			FUNC1("PORT\n");
			break;
		case ETHERSWITCH_VLAN_DOT1Q:
			FUNC1("DOT1Q\n");
			break;
		case ETHERSWITCH_VLAN_DOT1Q_4K:
			FUNC1("DOT1Q4K\n");
			break;
		case ETHERSWITCH_VLAN_DOUBLE_TAG:
			FUNC1("QinQ\n");
			break;
		default:
			FUNC1("none\n");
		}
	}

	/* Print switch MAC address. */
	if (cfg->conf.cmd & ETHERSWITCH_CONF_SWITCH_MACADDR) {
		FUNC1("%s: Switch MAC address: %s\n",
		    c,
		    FUNC0(&cfg->conf.switch_macaddr));
	}
}