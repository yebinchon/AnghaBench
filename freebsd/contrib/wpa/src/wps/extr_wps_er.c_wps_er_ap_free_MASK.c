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
struct wps_er_ap {struct wps_er_ap* ap_settings; struct wps_er_ap* event_sub_url; struct wps_er_ap* control_url; struct wps_er_ap* scpd_url; struct wps_er_ap* upc; struct wps_er_ap* udn; struct wps_er_ap* serial_number; struct wps_er_ap* model_url; struct wps_er_ap* model_number; struct wps_er_ap* model_name; struct wps_er_ap* model_description; struct wps_er_ap* manufacturer_url; struct wps_er_ap* manufacturer; struct wps_er_ap* friendly_name; struct wps_er_ap* location; int /*<<< orphan*/ * http; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wps_er_ap*) ; 

__attribute__((used)) static void FUNC2(struct wps_er_ap *ap)
{
	FUNC0(ap->http);
	ap->http = NULL;

	FUNC1(ap->location);
	FUNC1(ap->friendly_name);
	FUNC1(ap->manufacturer);
	FUNC1(ap->manufacturer_url);
	FUNC1(ap->model_description);
	FUNC1(ap->model_name);
	FUNC1(ap->model_number);
	FUNC1(ap->model_url);
	FUNC1(ap->serial_number);
	FUNC1(ap->udn);
	FUNC1(ap->upc);

	FUNC1(ap->scpd_url);
	FUNC1(ap->control_url);
	FUNC1(ap->event_sub_url);

	FUNC1(ap->ap_settings);

	FUNC1(ap);
}