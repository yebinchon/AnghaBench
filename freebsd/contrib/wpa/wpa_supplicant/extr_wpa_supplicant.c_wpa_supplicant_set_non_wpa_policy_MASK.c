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
struct wpa_supplicant {int key_mgmt; int pairwise_cipher; int group_cipher; int mgmt_group_cipher; int /*<<< orphan*/  wpa; } ;
struct wpa_ssid {int key_mgmt; int* wep_key_len; } ;

/* Variables and functions */
 int NUM_WEP_KEYS ; 
 void* WPA_CIPHER_NONE ; 
 void* WPA_CIPHER_WEP104 ; 
 void* WPA_CIPHER_WEP40 ; 
 int WPA_KEY_MGMT_IEEE8021X_NO_WPA ; 
 int WPA_KEY_MGMT_NONE ; 
 int WPA_KEY_MGMT_WPS ; 
 int /*<<< orphan*/  WPA_PARAM_GROUP ; 
 int /*<<< orphan*/  WPA_PARAM_KEY_MGMT ; 
 int /*<<< orphan*/  WPA_PARAM_MGMT_GROUP ; 
 int /*<<< orphan*/  WPA_PARAM_PAIRWISE ; 
 int /*<<< orphan*/  WPA_PARAM_RSN_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct wpa_supplicant *wpa_s,
				       struct wpa_ssid *ssid)
{
	int i;

	if (ssid->key_mgmt & WPA_KEY_MGMT_WPS)
		wpa_s->key_mgmt = WPA_KEY_MGMT_WPS;
	else if (ssid->key_mgmt & WPA_KEY_MGMT_IEEE8021X_NO_WPA)
		wpa_s->key_mgmt = WPA_KEY_MGMT_IEEE8021X_NO_WPA;
	else
		wpa_s->key_mgmt = WPA_KEY_MGMT_NONE;
	FUNC2(wpa_s->wpa, NULL, 0);
	FUNC1(wpa_s->wpa, NULL, 0);
	FUNC3(wpa_s->wpa, NULL, 0);
	wpa_s->pairwise_cipher = WPA_CIPHER_NONE;
	wpa_s->group_cipher = WPA_CIPHER_NONE;
	wpa_s->mgmt_group_cipher = 0;

	for (i = 0; i < NUM_WEP_KEYS; i++) {
		if (ssid->wep_key_len[i] > 5) {
			wpa_s->pairwise_cipher = WPA_CIPHER_WEP104;
			wpa_s->group_cipher = WPA_CIPHER_WEP104;
			break;
		} else if (ssid->wep_key_len[i] > 0) {
			wpa_s->pairwise_cipher = WPA_CIPHER_WEP40;
			wpa_s->group_cipher = WPA_CIPHER_WEP40;
			break;
		}
	}

	FUNC4(wpa_s->wpa, WPA_PARAM_RSN_ENABLED, 0);
	FUNC4(wpa_s->wpa, WPA_PARAM_KEY_MGMT, wpa_s->key_mgmt);
	FUNC4(wpa_s->wpa, WPA_PARAM_PAIRWISE,
			 wpa_s->pairwise_cipher);
	FUNC4(wpa_s->wpa, WPA_PARAM_GROUP, wpa_s->group_cipher);
#ifdef CONFIG_IEEE80211W
	wpa_sm_set_param(wpa_s->wpa, WPA_PARAM_MGMT_GROUP,
			 wpa_s->mgmt_group_cipher);
#endif /* CONFIG_IEEE80211W */

	FUNC0(wpa_s->wpa);
}