#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct wps_credential const* cred; int /*<<< orphan*/  uuid; } ;
union wps_event_data {TYPE_1__ ap_settings; } ;
struct wps_er_ap {TYPE_3__* er; int /*<<< orphan*/  uuid; TYPE_4__* ap_settings; } ;
struct wps_credential {int dummy; } ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_10__ {int /*<<< orphan*/ * cred_attr; } ;
struct TYPE_9__ {TYPE_2__* wps; } ;
struct TYPE_8__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* event_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wps_event_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPS_EV_ER_AP_SETTINGS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_4__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,struct wps_credential const*,int) ; 
 int /*<<< orphan*/  FUNC3 (union wps_event_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union wps_event_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(void *ctx, const struct wps_credential *cred)
{
	struct wps_er_ap *ap = ctx;
	union wps_event_data data;

	FUNC5(MSG_DEBUG, "WPS ER: AP Settings received");
	FUNC0(ap->ap_settings);
	ap->ap_settings = FUNC1(sizeof(*cred));
	if (ap->ap_settings) {
		FUNC2(ap->ap_settings, cred, sizeof(*cred));
		ap->ap_settings->cred_attr = NULL;
	}

	FUNC3(&data, 0, sizeof(data));
	data.ap_settings.uuid = ap->uuid;
	data.ap_settings.cred = cred;
	ap->er->wps->event_cb(ap->er->wps->cb_ctx, WPS_EV_ER_AP_SETTINGS,
			      &data);
}