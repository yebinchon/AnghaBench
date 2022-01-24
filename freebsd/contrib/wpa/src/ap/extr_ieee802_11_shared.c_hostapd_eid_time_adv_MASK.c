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
typedef  int /*<<< orphan*/  u8 ;
struct hostapd_data {int /*<<< orphan*/ * time_adv; TYPE_1__* conf; } ;
struct TYPE_2__ {int time_advertisement; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u8 * FUNC4(struct hostapd_data *hapd, u8 *eid)
{
	if (hapd->conf->time_advertisement != 2)
		return eid;

	if (hapd->time_adv == NULL &&
	    FUNC0(hapd) < 0)
		return eid;

	if (hapd->time_adv == NULL)
		return eid;

	FUNC1(eid, FUNC2(hapd->time_adv),
		  FUNC3(hapd->time_adv));
	eid += FUNC3(hapd->time_adv);

	return eid;
}