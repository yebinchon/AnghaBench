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
struct ifmediareq {int ifm_count; int* ifm_ulist; int /*<<< orphan*/  ifm_name; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGIFMEDIA ; 
 int /*<<< orphan*/  SIOCGIFXMEDIA ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifmediareq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

struct ifmediareq *
FUNC6(int s)
{
	static struct ifmediareq *ifmr = NULL;
	int *mwords;
	int xmedia = 1;

	if (ifmr == NULL) {
		ifmr = (struct ifmediareq *)FUNC3(sizeof(struct ifmediareq));
		if (ifmr == NULL)
			FUNC0(1, "malloc");

		(void) FUNC4(ifmr, 0, sizeof(struct ifmediareq));
		(void) FUNC5(ifmr->ifm_name, name,
		    sizeof(ifmr->ifm_name));

		ifmr->ifm_count = 0;
		ifmr->ifm_ulist = NULL;

		/*
		 * We must go through the motions of reading all
		 * supported media because we need to know both
		 * the current media type and the top-level type.
		 */

		if (FUNC2(s, SIOCGIFXMEDIA, (caddr_t)ifmr) < 0) {
			xmedia = 0;
		}
		if (xmedia == 0 && FUNC2(s, SIOCGIFMEDIA, (caddr_t)ifmr) < 0) {
			FUNC0(1, "SIOCGIFMEDIA");
		}

		if (ifmr->ifm_count == 0)
			FUNC1(1, "%s: no media types?", name);

		mwords = (int *)FUNC3(ifmr->ifm_count * sizeof(int));
		if (mwords == NULL)
			FUNC0(1, "malloc");
  
		ifmr->ifm_ulist = mwords;
		if (xmedia) {
			if (FUNC2(s, SIOCGIFXMEDIA, (caddr_t)ifmr) < 0)
				FUNC0(1, "SIOCGIFXMEDIA");
		} else {
			if (FUNC2(s, SIOCGIFMEDIA, (caddr_t)ifmr) < 0)
				FUNC0(1, "SIOCGIFMEDIA");
		}
	}

	return ifmr;
}