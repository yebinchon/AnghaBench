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
struct wps_er_ap_settings {int /*<<< orphan*/  ap_settings; int /*<<< orphan*/  list; int /*<<< orphan*/ * uuid; } ;
struct wps_er_ap {int /*<<< orphan*/ * ap_settings; int /*<<< orphan*/ * uuid; } ;
struct wps_er {int /*<<< orphan*/  ap_settings; } ;
struct wps_credential {int dummy; } ;
struct in_addr {int dummy; } ;

/* Variables and functions */
 int WPS_UUID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct wps_er_ap_settings* FUNC2 (int) ; 
 struct wps_er_ap* FUNC3 (struct wps_er*,struct in_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct wps_er_ap_settings* FUNC4 (struct wps_er*,int /*<<< orphan*/ *) ; 

int FUNC5(struct wps_er *er, struct in_addr *addr)
{
	struct wps_er_ap *ap;
	struct wps_er_ap_settings *settings;

	ap = FUNC3(er, addr, NULL, NULL);
	if (ap == NULL || ap->ap_settings == NULL)
		return -1;

	settings = FUNC4(er, ap->uuid);
	if (!settings) {
		settings = FUNC2(sizeof(*settings));
		if (settings == NULL)
			return -1;
		FUNC1(settings->uuid, ap->uuid, WPS_UUID_LEN);
		FUNC0(&er->ap_settings, &settings->list);
	}
	FUNC1(&settings->ap_settings, ap->ap_settings,
		  sizeof(struct wps_credential));

	return 0;
}