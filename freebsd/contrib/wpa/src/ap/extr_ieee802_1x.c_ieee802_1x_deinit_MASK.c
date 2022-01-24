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
struct hostapd_data {int /*<<< orphan*/ * eapol_auth; TYPE_1__* conf; scalar_t__ drv_priv; scalar_t__ driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  iface; scalar_t__ wpa; scalar_t__ ieee802_1x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*) ; 
 int /*<<< orphan*/  ieee802_1x_rekey ; 

void FUNC4(struct hostapd_data *hapd)
{
	FUNC1(ieee802_1x_rekey, hapd, NULL);

	if (hapd->driver && hapd->drv_priv &&
	    (hapd->conf->ieee802_1x || hapd->conf->wpa))
		FUNC2(hapd, hapd->conf->iface, 0);

	FUNC0(hapd->eapol_auth);
	hapd->eapol_auth = NULL;

	FUNC3(hapd);
}