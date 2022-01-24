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
struct wps_data {int /*<<< orphan*/  state; scalar_t__ er; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RECV_DONE ; 
 int /*<<< orphan*/  WPS_M8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 scalar_t__ FUNC4 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wps_data*,struct wpabuf*,struct wpabuf*) ; 
 scalar_t__ FUNC8 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC9 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC10 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct wpabuf*) ; 
 scalar_t__ FUNC12 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC13(struct wps_data *wps)
{
	struct wpabuf *msg, *plain;

	FUNC0(MSG_DEBUG, "WPS: Building Message M8");

	plain = FUNC1(500);
	if (plain == NULL)
		return NULL;

	msg = FUNC1(1000);
	if (msg == NULL) {
		FUNC3(plain);
		return NULL;
	}

	if (FUNC11(msg) ||
	    FUNC10(msg, WPS_M8) ||
	    FUNC8(wps, msg) ||
	    ((wps->wps->ap || wps->er) && FUNC6(wps, plain)) ||
	    (!wps->wps->ap && !wps->er && FUNC4(wps, plain)) ||
	    FUNC9(wps, plain) ||
	    FUNC7(wps, msg, plain) ||
	    FUNC12(msg, 0, NULL, 0, 0) ||
	    FUNC5(wps, msg)) {
		FUNC2(plain);
		FUNC2(msg);
		return NULL;
	}
	FUNC2(plain);

	wps->state = RECV_DONE;
	return msg;
}