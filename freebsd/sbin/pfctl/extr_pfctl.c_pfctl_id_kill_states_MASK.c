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
struct TYPE_2__ {scalar_t__ id; scalar_t__ creatorid; } ;
struct pfioc_state_kill {int psk_killed; TYPE_1__ psk_pfcmp; } ;
typedef  int /*<<< orphan*/  psk ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCKILLSTATES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int PF_OPT_QUIET ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,struct pfioc_state_kill*) ; 
 int /*<<< orphan*/  FUNC5 (struct pfioc_state_kill*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__*,...) ; 
 int /*<<< orphan*/ * state_kill ; 
 int state_killers ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int
FUNC10(int dev, const char *iface, int opts)
{
	struct pfioc_state_kill psk;
	
	if (state_killers != 2 || (FUNC7(state_kill[1]) == 0)) {
		FUNC9("no id specified");
		FUNC8();
	}

	FUNC5(&psk, 0, sizeof(psk));
	if ((FUNC6(state_kill[1], "%jx/%x",
	    &psk.psk_pfcmp.id, &psk.psk_pfcmp.creatorid)) == 2)
		FUNC0(psk.psk_pfcmp.creatorid);
	else if ((FUNC6(state_kill[1], "%jx", &psk.psk_pfcmp.id)) == 1) {
		psk.psk_pfcmp.creatorid = 0;
	} else {
		FUNC9("wrong id format specified");
		FUNC8();
	}
	if (psk.psk_pfcmp.id == 0) {
		FUNC9("cannot kill id 0");
		FUNC8();
	}

	psk.psk_pfcmp.id = FUNC3(psk.psk_pfcmp.id);
	if (FUNC4(dev, DIOCKILLSTATES, &psk))
		FUNC1(1, "DIOCKILLSTATES");

	if ((opts & PF_OPT_QUIET) == 0)
		FUNC2(stderr, "killed %d states\n", psk.psk_killed);

	return (0);
}