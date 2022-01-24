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
typedef  int /*<<< orphan*/  vg ;
struct cfg {int /*<<< orphan*/  fd; int /*<<< orphan*/  unit; } ;
struct TYPE_4__ {int es_vid; int /*<<< orphan*/  es_vlangroup; } ;
typedef  TYPE_1__ etherswitch_vlangroup_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int IEEE802DOT1Q_VID_MAX ; 
 int /*<<< orphan*/  IOETHERSWITCHGETVLANGROUP ; 
 int /*<<< orphan*/  IOETHERSWITCHSETVLANGROUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct cfg *cfg, int argc, char *argv[])
{
	int v;
	etherswitch_vlangroup_t vg;

	if (argc < 2)
		return (-1);

	FUNC3(&vg, 0, sizeof(vg));
	v = FUNC4(argv[1], NULL, 0);
	if (v < 0 || v > IEEE802DOT1Q_VID_MAX)
		FUNC1(EX_USAGE, "vlan must be between 0 and %d", IEEE802DOT1Q_VID_MAX);
	vg.es_vlangroup = cfg->unit;
	if (FUNC2(cfg->fd, IOETHERSWITCHGETVLANGROUP, &vg) != 0)
		FUNC0(EX_OSERR, "ioctl(IOETHERSWITCHGETVLANGROUP)");
	vg.es_vid = v;
	if (FUNC2(cfg->fd, IOETHERSWITCHSETVLANGROUP, &vg) != 0)
		FUNC0(EX_OSERR, "ioctl(IOETHERSWITCHSETVLANGROUP)");
	return (0);
}