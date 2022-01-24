#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cfg {int /*<<< orphan*/  fd; } ;
struct TYPE_4__ {scalar_t__ vlan_mode; int /*<<< orphan*/  cmd; } ;
typedef  TYPE_1__ etherswitch_conf_t ;
typedef  int /*<<< orphan*/  conf ;

/* Variables and functions */
 int /*<<< orphan*/  ETHERSWITCH_CONF_VLAN_MODE ; 
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ; 
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q_4K ; 
 scalar_t__ ETHERSWITCH_VLAN_DOUBLE_TAG ; 
 scalar_t__ ETHERSWITCH_VLAN_ISL ; 
 scalar_t__ ETHERSWITCH_VLAN_PORT ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  IOETHERSWITCHSETCONF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static int
FUNC4(struct cfg *cfg, int argc, char *argv[])
{
	etherswitch_conf_t conf;

	if (argc < 2)
		return (-1);

	FUNC0(&conf, sizeof(conf));
	conf.cmd = ETHERSWITCH_CONF_VLAN_MODE;
	if (FUNC3(argv[1], "isl") == 0)
		conf.vlan_mode = ETHERSWITCH_VLAN_ISL;
	else if (FUNC3(argv[1], "port") == 0)
		conf.vlan_mode = ETHERSWITCH_VLAN_PORT;
	else if (FUNC3(argv[1], "dot1q") == 0)
		conf.vlan_mode = ETHERSWITCH_VLAN_DOT1Q;
	else if (FUNC3(argv[1], "dot1q4k") == 0)
		conf.vlan_mode = ETHERSWITCH_VLAN_DOT1Q_4K;
	else if (FUNC3(argv[1], "qinq") == 0)
		conf.vlan_mode = ETHERSWITCH_VLAN_DOUBLE_TAG;
	else
		conf.vlan_mode = 0;
	if (FUNC2(cfg->fd, IOETHERSWITCHSETCONF, &conf) != 0)
		FUNC1(EX_OSERR, "ioctl(IOETHERSWITCHSETCONF)");

	return (0);
}