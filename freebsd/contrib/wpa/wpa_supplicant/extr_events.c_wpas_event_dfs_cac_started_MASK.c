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
struct wpa_supplicant {scalar_t__ ifmsh; scalar_t__ ap_iface; } ;
struct dfs_event {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,struct dfs_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,unsigned int) ; 
 unsigned int FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wpa_supplicant *wpa_s,
				       struct dfs_event *radar)
{
#if defined(NEED_AP_MLME) && defined(CONFIG_AP)
	if (wpa_s->ap_iface || wpa_s->ifmsh) {
		wpas_ap_event_dfs_cac_started(wpa_s, radar);
	} else
#endif /* NEED_AP_MLME && CONFIG_AP */
	{
		unsigned int cac_time = FUNC2(wpa_s, radar->freq);

		cac_time /= 1000; /* convert from ms to sec */
		if (!cac_time)
			cac_time = 10 * 60; /* max timeout: 10 minutes */

		/* Restart auth timeout: CAC time added to initial timeout */
		FUNC1(wpa_s, cac_time);
	}
}