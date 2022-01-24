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
struct ifmediareq {int ifm_current; int /*<<< orphan*/ * ifm_ulist; } ;
struct afswtch {int dummy; } ;
struct TYPE_2__ {int ifr_media; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int IFM_IMASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (int,char const*) ; 
 struct ifmediareq* FUNC3 (int) ; 
 TYPE_1__ ifr ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  setifmediacallback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(const char *val, int d, int s, const struct afswtch *afp)
{
	struct ifmediareq *ifmr;
	int subtype;

	ifmr = FUNC3(s);

	/*
	 * We are primarily concerned with the top-level type.
	 * However, "current" may be only IFM_NONE, so we just look
	 * for the top-level type in the first "supported type"
	 * entry.
	 *
	 * (I'm assuming that all supported media types for a given
	 * interface will be the same top-level type..)
	 */
	subtype = FUNC2(FUNC0(ifmr->ifm_ulist[0]), val);

	FUNC4(ifr.ifr_name, name, sizeof(ifr.ifr_name));
	ifr.ifr_media = (ifmr->ifm_current & IFM_IMASK) |
	    FUNC0(ifmr->ifm_ulist[0]) | subtype;

	ifmr->ifm_current = ifr.ifr_media;
	FUNC1(setifmediacallback, (void *)ifmr);
}