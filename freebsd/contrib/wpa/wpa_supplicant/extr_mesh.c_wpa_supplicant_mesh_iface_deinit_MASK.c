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
struct wpa_supplicant {int dummy; } ;
struct hostapd_iface {TYPE_1__* mconf; } ;
struct TYPE_2__ {int /*<<< orphan*/ * rsn_ie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,struct hostapd_iface*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(struct wpa_supplicant *wpa_s,
				      struct hostapd_iface *ifmsh)
{
	if (!ifmsh)
		return;

	if (ifmsh->mconf) {
		FUNC2(wpa_s, ifmsh);
		if (ifmsh->mconf->rsn_ie) {
			ifmsh->mconf->rsn_ie = NULL;
			/* We cannot free this struct
			 * because wpa_authenticator on
			 * hostapd side is also using it
			 * for now just set to NULL and
			 * let hostapd code free it.
			 */
		}
		FUNC3(ifmsh->mconf);
		ifmsh->mconf = NULL;
	}

	/* take care of shared data */
	FUNC0(ifmsh);
	FUNC1(ifmsh);
}