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
struct etherswitch_phyreg {int phy; int reg; int val; } ;
struct cfg {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  IOETHERSWITCHSETPHYREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct etherswitch_phyreg*) ; 

__attribute__((used)) static void
FUNC2(struct cfg *cfg, int phy, int reg, int val)
{
	struct etherswitch_phyreg er;
	
	er.phy = phy;
	er.reg = reg;
	er.val = val;
	if (FUNC1(cfg->fd, IOETHERSWITCHSETPHYREG, &er) != 0)
		FUNC0(EX_OSERR, "ioctl(IOETHERSWITCHSETPHYREG)");
}