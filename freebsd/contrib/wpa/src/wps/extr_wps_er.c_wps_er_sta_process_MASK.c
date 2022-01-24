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
struct wps_er_sta {int /*<<< orphan*/ * wps; } ;
struct wpabuf {int dummy; } ;
typedef  enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPS_CONTINUE ; 
 int WPS_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wps_er_sta*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wps_er_sta*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wps_er_sta*,struct wpabuf*) ; 
 int /*<<< orphan*/  wps_er_sta_timeout ; 
 struct wpabuf* FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,struct wpabuf*) ; 

__attribute__((used)) static void FUNC7(struct wps_er_sta *sta, struct wpabuf *msg,
			       enum wsc_op_code op_code)
{
	enum wps_process_res res;

	res = FUNC6(sta->wps, op_code, msg);
	if (res == WPS_CONTINUE) {
		struct wpabuf *next = FUNC5(sta->wps, &op_code);
		if (next)
			FUNC4(sta, next);
	} else {
		FUNC2(MSG_DEBUG, "WPS ER: Protocol run %s with the "
			   "enrollee (res=%d)",
			   res == WPS_DONE ? "succeeded" : "failed", res);
		FUNC3(sta->wps);
		sta->wps = NULL;
		if (res == WPS_DONE) {
			/* Remove the STA entry after short timeout */
			FUNC0(wps_er_sta_timeout, sta, NULL);
			FUNC1(10, 0, wps_er_sta_timeout, sta,
					       NULL);
		}
	}
}