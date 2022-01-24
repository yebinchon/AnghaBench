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
struct ifmediareq {int ifm_current; } ;
struct afswtch {int dummy; } ;
struct TYPE_2__ {int ifr_media; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int IFM_IMASK ; 
 scalar_t__ IFM_INST_MAX ; 
 int IFM_ISHIFT ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 struct ifmediareq* FUNC3 (int) ; 
 TYPE_1__ ifr ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  setifmediacallback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(const char *val, int d, int s, const struct afswtch *afp)
{
	struct ifmediareq *ifmr;
	int inst;

	ifmr = FUNC3(s);

	inst = FUNC0(val);
	if (inst < 0 || inst > (int)IFM_INST_MAX)
		FUNC2(1, "invalid media instance: %s", val);

	FUNC4(ifr.ifr_name, name, sizeof(ifr.ifr_name));
	ifr.ifr_media = (ifmr->ifm_current & ~IFM_IMASK) | inst << IFM_ISHIFT;

	ifmr->ifm_current = ifr.ifr_media;
	FUNC1(setifmediacallback, (void *)ifmr);
}