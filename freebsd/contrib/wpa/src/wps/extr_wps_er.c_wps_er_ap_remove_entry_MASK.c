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
struct wps_er_ap {int /*<<< orphan*/  list; scalar_t__ subscribed; int /*<<< orphan*/ * wps; int /*<<< orphan*/ * http; int /*<<< orphan*/  location; int /*<<< orphan*/  addr; } ;
struct wps_er {int /*<<< orphan*/  ap_unsubscribing; int /*<<< orphan*/  wps; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPS_EV_ER_AP_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wps_er*,struct wps_er_ap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct wps_er_ap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wps_er_ap*) ; 
 int /*<<< orphan*/  wps_er_ap_timeout ; 
 int /*<<< orphan*/  FUNC9 (struct wps_er*,struct wps_er_ap*) ; 
 int /*<<< orphan*/  FUNC10 (struct wps_er_ap*) ; 

__attribute__((used)) static void FUNC11(struct wps_er *er, struct wps_er_ap *ap)
{
	FUNC5(MSG_DEBUG, "WPS ER: Removing AP entry for %s (%s)",
		   FUNC4(ap->addr), ap->location);
	FUNC2(wps_er_ap_timeout, er, ap);
	FUNC10(ap);
	FUNC7(er->wps, ap, WPS_EV_ER_AP_REMOVE);
	FUNC3(ap->http);
	ap->http = NULL;
	if (ap->wps) {
		FUNC6(ap->wps);
		ap->wps = NULL;
	}

	FUNC1(&ap->list);
	if (ap->subscribed) {
		FUNC0(&er->ap_unsubscribing, &ap->list);
		FUNC9(er, ap);
	} else
		FUNC8(ap);
}