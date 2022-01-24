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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {scalar_t__ wpa_state; int /*<<< orphan*/  wpa; int /*<<< orphan*/  bssid; int /*<<< orphan*/ * current_ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ WPA_4WAY_HANDSHAKE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct wpa_supplicant *wpa_s, const u8 *addr)
{
	if (wpa_s->current_ssid == NULL ||
	    wpa_s->wpa_state < WPA_4WAY_HANDSHAKE ||
	    FUNC0(addr, wpa_s->bssid, ETH_ALEN) != 0)
		return 0;
	return FUNC1(wpa_s->wpa);
}