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
struct wps_data {int /*<<< orphan*/  state; int /*<<< orphan*/  dev_password_len; int /*<<< orphan*/  dev_password; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RECV_M5 ; 
 int /*<<< orphan*/  WPS_M4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 scalar_t__ FUNC4 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wps_data*,struct wpabuf*,struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC8 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC10 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC11 (struct wpabuf*) ; 
 scalar_t__ FUNC12 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct wps_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC14(struct wps_data *wps)
{
	struct wpabuf *msg, *plain;

	FUNC0(MSG_DEBUG, "WPS: Building Message M4");

	if (FUNC13(wps, wps->dev_password, wps->dev_password_len) < 0)
		return NULL;

	plain = FUNC1(200);
	if (plain == NULL)
		return NULL;

	msg = FUNC1(1000);
	if (msg == NULL) {
		FUNC3(plain);
		return NULL;
	}

	if (FUNC11(msg) ||
	    FUNC8(msg, WPS_M4) ||
	    FUNC6(wps, msg) ||
	    FUNC9(wps, msg) ||
	    FUNC10(wps, plain) ||
	    FUNC7(wps, plain) ||
	    FUNC5(wps, msg, plain) ||
	    FUNC12(msg, 0, NULL, 0, 0) ||
	    FUNC4(wps, msg)) {
		FUNC2(plain);
		FUNC3(msg);
		return NULL;
	}
	FUNC2(plain);

	wps->state = RECV_M5;
	return msg;
}