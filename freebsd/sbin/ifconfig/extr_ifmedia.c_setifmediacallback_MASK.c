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
struct ifmediareq {struct ifmediareq* ifm_ulist; int /*<<< orphan*/  ifm_current; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  ifr_media; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCSIFMEDIA ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifmediareq*) ; 
 TYPE_1__ ifr ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(int s, void *arg)
{
	struct ifmediareq *ifmr = (struct ifmediareq *)arg;
	static int did_it = 0;

	if (!did_it) {
		ifr.ifr_media = ifmr->ifm_current;
		if (FUNC2(s, SIOCSIFMEDIA, (caddr_t)&ifr) < 0)
			FUNC0(1, "SIOCSIFMEDIA (media)");
		FUNC1(ifmr->ifm_ulist);
		FUNC1(ifmr);
		did_it = 1;
	}
}