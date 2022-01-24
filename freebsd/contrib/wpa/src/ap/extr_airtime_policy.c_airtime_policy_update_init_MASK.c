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
struct hostapd_iface {TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ airtime_mode; } ;

/* Variables and functions */
 scalar_t__ AIRTIME_MODE_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int /*<<< orphan*/ ,struct hostapd_iface*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct hostapd_iface*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  update_airtime_weights ; 

int FUNC2(struct hostapd_iface *iface)
{
	unsigned int sec, usec;

	if (iface->conf->airtime_mode < AIRTIME_MODE_DYNAMIC)
		return 0;

	if (FUNC1(iface, &sec, &usec) < 0)
		return -1;

	FUNC0(sec, usec, update_airtime_weights, iface, NULL);
	return 0;
}