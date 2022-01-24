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
typedef  scalar_t__ u16 ;
struct wps_data {scalar_t__ config_error; int /*<<< orphan*/  state; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* rf_band_cb ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  registrar; scalar_t__ ap_setup_locked; scalar_t__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RECV_M2D_ACK ; 
 scalar_t__ WPS_CFG_NO_ERROR ; 
 scalar_t__ WPS_CFG_SETUP_LOCKED ; 
 int /*<<< orphan*/  WPS_M2D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 scalar_t__ FUNC4 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wpabuf*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct wpabuf*) ; 
 scalar_t__ FUNC8 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC10 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC11 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC12 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC14 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC17 (struct wpabuf*) ; 
 scalar_t__ FUNC18 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC19(struct wps_data *wps)
{
	struct wpabuf *msg;
	u16 err = wps->config_error;

	FUNC1(MSG_DEBUG, "WPS: Building Message M2D");
	msg = FUNC2(1000);
	if (msg == NULL)
		return NULL;

	if (wps->wps->ap && wps->wps->ap_setup_locked &&
	    err == WPS_CFG_NO_ERROR)
		err = WPS_CFG_SETUP_LOCKED;

	if (FUNC17(msg) ||
	    FUNC12(msg, WPS_M2D) ||
	    FUNC11(wps, msg) ||
	    FUNC14(wps, msg) ||
	    FUNC16(wps, msg) ||
	    FUNC5(wps, msg) ||
	    FUNC10(wps, msg) ||
	    FUNC8(wps, msg) ||
	    FUNC7(wps->wps->registrar, msg) ||
	    FUNC9(&wps->wps->dev, msg) ||
	    FUNC15(&wps->wps->dev, msg,
			       wps->wps->rf_band_cb(wps->wps->cb_ctx)) ||
	    FUNC4(wps, msg) ||
	    FUNC6(msg, err) ||
	    FUNC13(&wps->wps->dev, msg) ||
	    FUNC18(msg, 0, NULL, 0, 0)) {
		FUNC3(msg);
		return NULL;
	}

	wps->state = RECV_M2D_ACK;
	return msg;
}