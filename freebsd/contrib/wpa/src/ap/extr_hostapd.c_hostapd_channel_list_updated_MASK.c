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
struct hostapd_iface {int /*<<< orphan*/  wait_channel_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int REGDOM_SET_BY_USER ; 
 int /*<<< orphan*/  channel_list_update_timeout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hostapd_iface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct hostapd_iface *iface, int initiator)
{
	if (!iface->wait_channel_update || initiator != REGDOM_SET_BY_USER)
		return;

	FUNC2(MSG_DEBUG, "Channel list updated - continue setup");
	FUNC0(channel_list_update_timeout, iface, NULL);
	FUNC1(iface);
}