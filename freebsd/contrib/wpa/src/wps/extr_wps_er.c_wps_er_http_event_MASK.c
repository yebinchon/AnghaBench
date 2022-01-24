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
struct wps_er_ap {int dummy; } ;
struct wps_er {int dummy; } ;
struct wpabuf {int dummy; } ;
struct http_request {int dummy; } ;
typedef  enum http_reply_code { ____Placeholder_http_reply_code } http_reply_code ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (struct http_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 struct wps_er_ap* FUNC3 (struct wps_er*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct http_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct http_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct wps_er_ap*,struct wpabuf*) ; 
 struct wpabuf* FUNC7 (int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static void FUNC8(struct wps_er *er, struct http_request *req,
			      unsigned int ap_id)
{
	struct wps_er_ap *ap = FUNC3(er, ap_id);
	struct wpabuf *event;
	enum http_reply_code ret;

	if (ap == NULL) {
		FUNC1(MSG_DEBUG, "WPS ER: HTTP event from unknown AP id "
			   "%u", ap_id);
		FUNC4(req);
		return;
	}
	FUNC1(MSG_MSGDUMP, "WPS ER: HTTP event from AP id %u: %s",
		   ap_id, FUNC0(req));

	event = FUNC7(FUNC0(req), "WLANEvent",
				    &ret);
	if (event == NULL) {
		FUNC1(MSG_DEBUG, "WPS ER: Could not extract WLANEvent "
			   "from the event notification");
		/*
		 * Reply with OK anyway to avoid getting unregistered from
		 * events.
		 */
		FUNC5(req);
		return;
	}

	FUNC6(ap, event);

	FUNC2(event);
	FUNC5(req);
}