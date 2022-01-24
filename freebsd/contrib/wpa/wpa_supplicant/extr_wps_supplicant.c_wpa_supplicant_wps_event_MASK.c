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
struct TYPE_2__ {int /*<<< orphan*/  enrollee; } ;
union wps_event_data {int /*<<< orphan*/  set_sel_reg; int /*<<< orphan*/  ap_settings; int /*<<< orphan*/  enrollee; int /*<<< orphan*/  ap; TYPE_1__ pwd_auth_fail; int /*<<< orphan*/  fail; int /*<<< orphan*/  m2d; } ;
struct wpa_supplicant {int /*<<< orphan*/  ap_iface; } ;
typedef  enum wps_event { ____Placeholder_wps_event } wps_event ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WPS_EVENT_ACTIVE ; 
 int /*<<< orphan*/  WPS_EVENT_DISABLE ; 
#define  WPS_EV_AP_PIN_SUCCESS 142 
#define  WPS_EV_ER_AP_ADD 141 
#define  WPS_EV_ER_AP_REMOVE 140 
#define  WPS_EV_ER_AP_SETTINGS 139 
#define  WPS_EV_ER_ENROLLEE_ADD 138 
#define  WPS_EV_ER_ENROLLEE_REMOVE 137 
#define  WPS_EV_ER_SET_SELECTED_REGISTRAR 136 
#define  WPS_EV_FAIL 135 
#define  WPS_EV_M2D 134 
#define  WPS_EV_PBC_ACTIVE 133 
#define  WPS_EV_PBC_DISABLE 132 
#define  WPS_EV_PBC_OVERLAP 131 
#define  WPS_EV_PBC_TIMEOUT 130 
#define  WPS_EV_PWD_AUTH_FAIL 129 
#define  WPS_EV_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC11(void *ctx, enum wps_event event,
				     union wps_event_data *data)
{
	struct wpa_supplicant *wpa_s = ctx;
	switch (event) {
	case WPS_EV_M2D:
		FUNC9(wpa_s, &data->m2d);
		break;
	case WPS_EV_FAIL:
		FUNC8(wpa_s, &data->fail);
		break;
	case WPS_EV_SUCCESS:
		FUNC10(wpa_s);
		break;
	case WPS_EV_PWD_AUTH_FAIL:
#ifdef CONFIG_AP
		if (wpa_s->ap_iface && data->pwd_auth_fail.enrollee)
			wpa_supplicant_ap_pwd_auth_fail(wpa_s);
#endif /* CONFIG_AP */
		break;
	case WPS_EV_PBC_OVERLAP:
		break;
	case WPS_EV_PBC_TIMEOUT:
		break;
	case WPS_EV_PBC_ACTIVE:
		FUNC0(wpa_s, MSG_INFO, WPS_EVENT_ACTIVE);
		break;
	case WPS_EV_PBC_DISABLE:
		FUNC0(wpa_s, MSG_INFO, WPS_EVENT_DISABLE);
		break;
	case WPS_EV_ER_AP_ADD:
		FUNC2(wpa_s, &data->ap);
		break;
	case WPS_EV_ER_AP_REMOVE:
		FUNC3(wpa_s, &data->ap);
		break;
	case WPS_EV_ER_ENROLLEE_ADD:
		FUNC5(wpa_s,
							 &data->enrollee);
		break;
	case WPS_EV_ER_ENROLLEE_REMOVE:
		FUNC6(wpa_s,
							    &data->enrollee);
		break;
	case WPS_EV_ER_AP_SETTINGS:
		FUNC4(wpa_s,
							&data->ap_settings);
		break;
	case WPS_EV_ER_SET_SELECTED_REGISTRAR:
		FUNC7(wpa_s,
							&data->set_sel_reg);
		break;
	case WPS_EV_AP_PIN_SUCCESS:
		break;
	}
}