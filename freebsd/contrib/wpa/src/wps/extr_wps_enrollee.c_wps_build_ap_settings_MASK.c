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
struct wps_data {TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ap_settings_len; scalar_t__ ap_settings; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC5 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wps_data*,struct wpabuf*) ; 
 scalar_t__ FUNC8 (struct wps_data*,struct wpabuf*) ; 

__attribute__((used)) static int FUNC9(struct wps_data *wps, struct wpabuf *plain)
{
	const u8 *start, *end;
	int ret;

	if (wps->wps->ap_settings) {
		FUNC1(MSG_DEBUG, "WPS:  * AP Settings (pre-configured)");
		FUNC3(plain, wps->wps->ap_settings,
				wps->wps->ap_settings_len);
		return 0;
	}

	FUNC1(MSG_DEBUG, "WPS:  * AP Settings based on current configuration");
	start = FUNC2(plain, 0);
	ret = FUNC8(wps, plain) ||
		FUNC6(wps, plain) ||
		FUNC4(wps, plain) ||
		FUNC5(wps, plain) ||
		FUNC7(wps, plain);
	end = FUNC2(plain, 0);

	FUNC0(MSG_DEBUG, "WPS: Plaintext AP Settings",
			start, end - start);

	return ret;
}