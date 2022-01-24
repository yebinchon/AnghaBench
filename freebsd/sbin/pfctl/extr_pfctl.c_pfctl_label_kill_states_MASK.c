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
struct pfioc_state_kill {int psk_killed; int /*<<< orphan*/  psk_label; int /*<<< orphan*/  psk_ifname; } ;
typedef  int /*<<< orphan*/  psk ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCKILLSTATES ; 
 int PF_OPT_QUIET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct pfioc_state_kill*) ; 
 int /*<<< orphan*/  FUNC4 (struct pfioc_state_kill*,int /*<<< orphan*/ ,int) ; 
 char const** state_kill ; 
 int state_killers ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(int dev, const char *iface, int opts)
{
	struct pfioc_state_kill psk;

	if (state_killers != 2 || (FUNC6(state_kill[1]) == 0)) {
		FUNC8("no label specified");
		FUNC7();
	}
	FUNC4(&psk, 0, sizeof(psk));
	if (iface != NULL && FUNC5(psk.psk_ifname, iface,
	    sizeof(psk.psk_ifname)) >= sizeof(psk.psk_ifname))
		FUNC1(1, "invalid interface: %s", iface);

	if (FUNC5(psk.psk_label, state_kill[1], sizeof(psk.psk_label)) >=
	    sizeof(psk.psk_label))
		FUNC1(1, "label too long: %s", state_kill[1]);

	if (FUNC3(dev, DIOCKILLSTATES, &psk))
		FUNC0(1, "DIOCKILLSTATES");

	if ((opts & PF_OPT_QUIET) == 0)
		FUNC2(stderr, "killed %d states\n", psk.psk_killed);

	return (0);
}