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
struct pfioc_state_kill {int psk_killed; int /*<<< orphan*/  psk_ifname; } ;
typedef  int /*<<< orphan*/  psk ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCCLRSTATES ; 
 int PF_OPT_QUIET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct pfioc_state_kill*) ; 
 int /*<<< orphan*/  FUNC4 (struct pfioc_state_kill*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC6(int dev, const char *iface, int opts)
{
	struct pfioc_state_kill psk;

	FUNC4(&psk, 0, sizeof(psk));
	if (iface != NULL && FUNC5(psk.psk_ifname, iface,
	    sizeof(psk.psk_ifname)) >= sizeof(psk.psk_ifname))
		FUNC1(1, "invalid interface: %s", iface);

	if (FUNC3(dev, DIOCCLRSTATES, &psk))
		FUNC0(1, "DIOCCLRSTATES");
	if ((opts & PF_OPT_QUIET) == 0)
		FUNC2(stderr, "%d states cleared\n", psk.psk_killed);
	return (0);
}