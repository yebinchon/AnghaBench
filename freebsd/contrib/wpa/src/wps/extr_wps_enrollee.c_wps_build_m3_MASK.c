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
struct wps_data {int /*<<< orphan*/  state; TYPE_1__* wps; int /*<<< orphan*/  dev_password_len; int /*<<< orphan*/ * dev_password; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  RECV_M4 ; 
 int /*<<< orphan*/  WPS_M3 ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 scalar_t__ FUNC4 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC8 (struct wpabuf*) ; 
 scalar_t__ FUNC9 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct wps_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC11(struct wps_data *wps)
{
	struct wpabuf *msg;

	FUNC1(MSG_DEBUG, "WPS: Building Message M3");

	if (wps->dev_password == NULL) {
		FUNC1(MSG_DEBUG, "WPS: No Device Password available");
		return NULL;
	}
	if (FUNC10(wps, wps->dev_password, wps->dev_password_len) < 0)
		return NULL;

	if (wps->wps->ap && FUNC0() != 1) {
		FUNC1(MSG_INFO,
			   "WPS: Not enough entropy in random pool to proceed - do not allow AP PIN to be used");
		return NULL;
	}

	msg = FUNC2(1000);
	if (msg == NULL)
		return NULL;

	if (FUNC8(msg) ||
	    FUNC6(msg, WPS_M3) ||
	    FUNC7(wps, msg) ||
	    FUNC5(wps, msg) ||
	    FUNC9(msg, 0, NULL, 0, 0) ||
	    FUNC4(wps, msg)) {
		FUNC3(msg);
		return NULL;
	}

	wps->state = RECV_M4;
	return msg;
}