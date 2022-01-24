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
struct wpa_supplicant {unsigned int assoc_freq; int /*<<< orphan*/  own_addr; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {size_t ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (struct wpa_supplicant*) ; 
 struct wpa_supplicant* FUNC2 (struct wpa_supplicant*) ; 
 struct wpa_ssid* FUNC3 (struct wpa_supplicant*) ; 

__attribute__((used)) static int FUNC4(void *ctx, u8 *intended_addr,
			    u8 *ssid, size_t *ssid_len, int *group_iface,
			    unsigned int *freq)
{
	struct wpa_supplicant *wpa_s = ctx;
	struct wpa_supplicant *go;
	struct wpa_ssid *s;

	/*
	 * group_iface will be set to 1 only if a dedicated interface for P2P
	 * role is required. First, we try to reuse an active GO. However,
	 * if it is not present, we will try to reactivate an existing
	 * persistent group and set group_iface to 1, so the caller will know
	 * that the pending interface should be used.
	 */
	*group_iface = 0;

	if (freq)
		*freq = 0;

	go = FUNC2(wpa_s);
	if (!go) {
		s = FUNC3(wpa_s);
		*group_iface = FUNC1(wpa_s);
		if (s)
			FUNC0(intended_addr, s->bssid, ETH_ALEN);
		else
			return 0;
	} else {
		s = go->current_ssid;
		FUNC0(intended_addr, go->own_addr, ETH_ALEN);
		if (freq)
			*freq = go->assoc_freq;
	}

	FUNC0(ssid, s->ssid, s->ssid_len);
	*ssid_len = s->ssid_len;

	return 1;
}