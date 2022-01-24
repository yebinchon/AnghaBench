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
struct wpa_supplicant {TYPE_1__* conf; int /*<<< orphan*/  confname; } ;
struct wpa_ssid {int dummy; } ;
struct TYPE_2__ {scalar_t__ update_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct wpa_supplicant*,struct wpa_ssid*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC3(struct wpa_supplicant *wpa_s,
				struct wpa_ssid *s, const u8 *addr,
				int iface_addr)
{
	int res;

	res = FUNC2(wpa_s, s, addr, iface_addr);
	if (res > 0 && wpa_s->conf->update_config &&
	    FUNC0(wpa_s->confname, wpa_s->conf))
		FUNC1(wpa_s, MSG_DEBUG,
			"P2P: Failed to update configuration");
}