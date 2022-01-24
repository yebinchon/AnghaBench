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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct wps_data {scalar_t__ dev_password_len; int /*<<< orphan*/  state; TYPE_1__* wps; int /*<<< orphan*/  dev_pw_id; int /*<<< orphan*/  mac_addr_e; int /*<<< orphan*/  uuid_e; scalar_t__ multi_ap_backhaul_sta; int /*<<< orphan*/  pbc_in_m1; int /*<<< orphan*/  nonce_e; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int config_methods; int /*<<< orphan*/  dev; int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* rf_band_cb ) (int /*<<< orphan*/ ) ;scalar_t__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MULTI_AP_BACKHAUL_STA ; 
 int /*<<< orphan*/  RECV_M2 ; 
 int /*<<< orphan*/  WPS_CFG_NO_ERROR ; 
 int WPS_CONFIG_DISPLAY ; 
 int WPS_CONFIG_PHY_PUSHBUTTON ; 
 int WPS_CONFIG_PUSHBUTTON ; 
 int WPS_CONFIG_VIRT_PUSHBUTTON ; 
 int /*<<< orphan*/  WPS_M1 ; 
 int /*<<< orphan*/  WPS_NONCE_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC8 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct wpabuf*,int) ; 
 scalar_t__ FUNC10 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC11 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC13 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC14 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC15 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC18 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC22 (struct wpabuf*) ; 
 scalar_t__ FUNC23 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct wps_data*,struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC25(struct wps_data *wps)
{
	struct wpabuf *msg;
	u16 config_methods;
	u8 multi_ap_backhaul_sta = 0;

	if (FUNC0(wps->nonce_e, WPS_NONCE_LEN) < 0)
		return NULL;
	FUNC2(MSG_DEBUG, "WPS: Enrollee Nonce",
		    wps->nonce_e, WPS_NONCE_LEN);

	FUNC3(MSG_DEBUG, "WPS: Building Message M1");
	msg = FUNC4(1000);
	if (msg == NULL)
		return NULL;

	config_methods = wps->wps->config_methods;
	if (wps->wps->ap && !wps->pbc_in_m1 &&
	    (wps->dev_password_len != 0 ||
	     (config_methods & WPS_CONFIG_DISPLAY))) {
		/*
		 * These are the methods that the AP supports as an Enrollee
		 * for adding external Registrars, so remove PushButton.
		 *
		 * As a workaround for Windows 7 mechanism for probing WPS
		 * capabilities from M1, leave PushButton option if no PIN
		 * method is available or if WPS configuration enables PBC
		 * workaround.
		 */
		config_methods &= ~WPS_CONFIG_PUSHBUTTON;
		config_methods &= ~(WPS_CONFIG_VIRT_PUSHBUTTON |
				    WPS_CONFIG_PHY_PUSHBUTTON);
	}

	if (wps->multi_ap_backhaul_sta)
		multi_ap_backhaul_sta = MULTI_AP_BACKHAUL_STA;

	if (FUNC22(msg) ||
	    FUNC16(msg, WPS_M1) ||
	    FUNC20(msg, wps->uuid_e) ||
	    FUNC15(msg, wps->mac_addr_e) ||
	    FUNC14(wps, msg) ||
	    FUNC18(wps, msg) ||
	    FUNC7(wps, msg) ||
	    FUNC13(wps, msg) ||
	    FUNC10(wps, msg) ||
	    FUNC9(msg, config_methods) ||
	    FUNC24(wps, msg) ||
	    FUNC12(&wps->wps->dev, msg) ||
	    FUNC19(&wps->wps->dev, msg,
			       wps->wps->rf_band_cb(wps->wps->cb_ctx)) ||
	    FUNC6(wps, msg) ||
	    FUNC11(msg, wps->dev_pw_id) ||
	    FUNC8(msg, WPS_CFG_NO_ERROR) ||
	    FUNC17(&wps->wps->dev, msg) ||
	    FUNC23(msg, 0, NULL, 0, multi_ap_backhaul_sta) ||
	    FUNC21(&wps->wps->dev, msg)) {
		FUNC5(msg);
		return NULL;
	}

	wps->state = RECV_M2;
	return msg;
}