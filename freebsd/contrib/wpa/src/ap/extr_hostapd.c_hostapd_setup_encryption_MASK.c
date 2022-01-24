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
struct hostapd_data {TYPE_3__* conf; } ;
struct TYPE_4__ {int idx; scalar_t__* key; int /*<<< orphan*/ * len; scalar_t__ default_len; } ;
struct TYPE_5__ {TYPE_1__ wep; } ;
struct TYPE_6__ {TYPE_2__ ssid; int /*<<< orphan*/  auth_algs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  WPA_ALG_WEP ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(char *iface, struct hostapd_data *hapd)
{
	int i;

	FUNC0(hapd);

	if (hapd->conf->ssid.wep.default_len) {
		FUNC3(hapd, 1);
		return 0;
	}

	/*
	 * When IEEE 802.1X is not enabled, the driver may need to know how to
	 * set authentication algorithms for static WEP.
	 */
	FUNC1(hapd, hapd->conf->auth_algs);

	for (i = 0; i < 4; i++) {
		if (hapd->conf->ssid.wep.key[i] &&
		    FUNC2(iface, hapd, WPA_ALG_WEP, NULL, i,
					i == hapd->conf->ssid.wep.idx, NULL, 0,
					hapd->conf->ssid.wep.key[i],
					hapd->conf->ssid.wep.len[i])) {
			FUNC4(MSG_WARNING, "Could not set WEP "
				   "encryption.");
			return -1;
		}
		if (hapd->conf->ssid.wep.key[i] &&
		    i == hapd->conf->ssid.wep.idx)
			FUNC3(hapd, 1);
	}

	return 0;
}