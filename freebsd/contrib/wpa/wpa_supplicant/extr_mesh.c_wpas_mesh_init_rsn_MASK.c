#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {int /*<<< orphan*/  mesh_rsn; TYPE_1__* conf; struct wpa_ssid* current_ssid; struct hostapd_iface* ifmsh; } ;
struct wpa_ssid {char* sae_password; char* passphrase; int /*<<< orphan*/  key_mgmt; int /*<<< orphan*/  proto; } ;
struct hostapd_iface {int /*<<< orphan*/  mconf; struct hostapd_data** bss; } ;
struct hostapd_data {TYPE_3__* conf; } ;
typedef  int /*<<< orphan*/  default_groups ;
struct TYPE_5__ {int /*<<< orphan*/  wpa_passphrase; } ;
struct TYPE_6__ {TYPE_2__ ssid; int /*<<< orphan*/  sae_groups; int /*<<< orphan*/  wpa_key_mgmt; int /*<<< orphan*/  wpa; } ;
struct TYPE_4__ {scalar_t__* sae_groups; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 size_t FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct hostapd_data*,struct wpa_supplicant*) ; 

__attribute__((used)) static int FUNC6(struct wpa_supplicant *wpa_s)
{
	struct hostapd_iface *ifmsh = wpa_s->ifmsh;
	struct wpa_ssid *ssid = wpa_s->current_ssid;
	struct hostapd_data *bss = ifmsh->bss[0];
	static int default_groups[] = { 19, 20, 21, 25, 26, -1 };
	const char *password;
	size_t len;

	password = ssid->sae_password;
	if (!password)
		password = ssid->passphrase;
	if (!password) {
		FUNC4(MSG_ERROR,
			   "mesh: Passphrase for SAE not configured");
		return -1;
	}

	bss->conf->wpa = ssid->proto;
	bss->conf->wpa_key_mgmt = ssid->key_mgmt;

	if (wpa_s->conf->sae_groups && wpa_s->conf->sae_groups[0] > 0) {
		FUNC5(bss, wpa_s);
	} else {
		bss->conf->sae_groups = FUNC2(default_groups,
						  sizeof(default_groups));
		if (!bss->conf->sae_groups)
			return -1;
	}

	len = FUNC3(password);
	bss->conf->ssid.wpa_passphrase = FUNC0(password, len);

	wpa_s->mesh_rsn = FUNC1(wpa_s, ifmsh->mconf);
	return !wpa_s->mesh_rsn ? -1 : 0;
}