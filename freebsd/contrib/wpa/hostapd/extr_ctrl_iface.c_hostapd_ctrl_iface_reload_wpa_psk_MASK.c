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
struct hostapd_data {struct hostapd_bss_config* conf; } ;
struct TYPE_2__ {int /*<<< orphan*/  wpa_psk; } ;
struct hostapd_bss_config {TYPE_1__ ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hostapd_ctrl_iface_kick_mismatch_psk_sta_iter ; 
 int FUNC2 (struct hostapd_bss_config*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct hostapd_data *hapd)
{
	struct hostapd_bss_config *conf = hapd->conf;
	int err;

	FUNC1(&conf->ssid.wpa_psk);

	err = FUNC2(conf);
	if (err < 0) {
		FUNC3(MSG_ERROR, "Reloading WPA-PSK passwords failed: %d",
			   err);
		return -1;
	}

	FUNC0(hapd, hostapd_ctrl_iface_kick_mismatch_psk_sta_iter,
			NULL);

	return 0;
}