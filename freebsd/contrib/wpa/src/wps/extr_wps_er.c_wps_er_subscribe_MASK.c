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
struct wps_er_ap {int /*<<< orphan*/ * http; int /*<<< orphan*/  id; TYPE_1__* er; int /*<<< orphan*/ * event_sub_url; } ;
struct wpabuf {int dummy; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_id; int /*<<< orphan*/  http_port; int /*<<< orphan*/  ip_addr_text; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/ * FUNC0 (struct sockaddr_in*,struct wpabuf*,int,int /*<<< orphan*/ ,struct wps_er_ap*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,struct sockaddr_in*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  wps_er_http_subscribe_cb ; 

__attribute__((used)) static void FUNC13(struct wps_er_ap *ap)
{
	struct wpabuf *req;
	struct sockaddr_in dst;
	char *url, *path;

	if (ap->event_sub_url == NULL) {
		FUNC7(MSG_DEBUG, "WPS ER: No eventSubURL - cannot "
			   "subscribe");
		return;
	}
	if (ap->http) {
		FUNC7(MSG_DEBUG, "WPS ER: Pending HTTP request - cannot "
			   "send subscribe request");
		return;
	}

	url = FUNC1(ap->event_sub_url, &dst, &path);
	if (url == NULL) {
		FUNC7(MSG_DEBUG, "WPS ER: Failed to parse eventSubURL");
		return;
	}

	req = FUNC8(FUNC5(ap->event_sub_url) + 1000);
	if (req == NULL) {
		FUNC4(url);
		return;
	}
	FUNC12(req,
		      "SUBSCRIBE %s HTTP/1.1\r\n"
		      "HOST: %s:%d\r\n"
		      "CALLBACK: <http://%s:%d/event/%u/%u>\r\n"
		      "NT: upnp:event\r\n"
		      "TIMEOUT: Second-%d\r\n"
		      "\r\n",
		      path, FUNC2(dst.sin_addr), FUNC3(dst.sin_port),
		      ap->er->ip_addr_text, ap->er->http_port,
		      ap->er->event_id, ap->id, 1800);
	FUNC4(url);
	FUNC6(MSG_MSGDUMP, "WPS ER: Subscription request",
			  FUNC10(req), FUNC11(req));

	ap->http = FUNC0(&dst, req, 1000, wps_er_http_subscribe_cb,
				    ap);
	if (ap->http == NULL)
		FUNC9(req);
}