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
struct wpa_supplicant {int group_cipher; } ;
struct wpa_ssid {scalar_t__ mode; int /*<<< orphan*/  psk; int /*<<< orphan*/  psk_set; } ;
typedef  int /*<<< orphan*/  key ;
typedef  enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ WPAS_MODE_IBSS ; 
 int WPA_ALG_CCMP ; 
 int WPA_ALG_GCMP ; 
 int WPA_ALG_TKIP ; 
#define  WPA_CIPHER_CCMP 130 
#define  WPA_CIPHER_GCMP 129 
#define  WPA_CIPHER_TKIP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct wpa_supplicant*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,...) ; 

int FUNC4(struct wpa_supplicant *wpa_s,
				    struct wpa_ssid *ssid)
{
	u8 key[32];
	size_t keylen;
	enum wpa_alg alg;
	u8 seq[6] = { 0 };
	int ret;

	/* IBSS/WPA-None uses only one key (Group) for both receiving and
	 * sending unicast and multicast packets. */

	if (ssid->mode != WPAS_MODE_IBSS) {
		FUNC3(wpa_s, MSG_INFO, "WPA: Invalid mode %d (not "
			"IBSS/ad-hoc) for WPA-None", ssid->mode);
		return -1;
	}

	if (!ssid->psk_set) {
		FUNC3(wpa_s, MSG_INFO, "WPA: No PSK configured for "
			"WPA-None");
		return -1;
	}

	switch (wpa_s->group_cipher) {
	case WPA_CIPHER_CCMP:
		FUNC0(key, ssid->psk, 16);
		keylen = 16;
		alg = WPA_ALG_CCMP;
		break;
	case WPA_CIPHER_GCMP:
		FUNC0(key, ssid->psk, 16);
		keylen = 16;
		alg = WPA_ALG_GCMP;
		break;
	case WPA_CIPHER_TKIP:
		/* WPA-None uses the same Michael MIC key for both TX and RX */
		FUNC0(key, ssid->psk, 16 + 8);
		FUNC0(key + 16 + 8, ssid->psk + 16, 8);
		keylen = 32;
		alg = WPA_ALG_TKIP;
		break;
	default:
		FUNC3(wpa_s, MSG_INFO, "WPA: Invalid group cipher %d for "
			"WPA-None", wpa_s->group_cipher);
		return -1;
	}

	/* TODO: should actually remember the previously used seq#, both for TX
	 * and RX from each STA.. */

	ret = FUNC2(wpa_s, alg, NULL, 0, 1, seq, 6, key, keylen);
	FUNC1(key, 0, sizeof(key));
	return ret;
}