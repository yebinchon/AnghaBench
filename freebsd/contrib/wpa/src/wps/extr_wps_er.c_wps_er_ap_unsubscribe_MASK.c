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
struct wps_er_ap {int /*<<< orphan*/  er; int /*<<< orphan*/ * http; int /*<<< orphan*/  sid; int /*<<< orphan*/ * event_sub_url; } ;
struct wps_er {int dummy; } ;
struct wpabuf {int dummy; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
typedef  int /*<<< orphan*/  sid ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/ * FUNC0 (struct sockaddr_in*,struct wpabuf*,int,int /*<<< orphan*/ ,struct wps_er_ap*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,struct sockaddr_in*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct wps_er_ap*) ; 
 int /*<<< orphan*/  wps_er_http_unsubscribe_cb ; 

__attribute__((used)) static void FUNC15(struct wps_er *er, struct wps_er_ap *ap)
{
	struct wpabuf *req;
	struct sockaddr_in dst;
	char *url, *path;
	char sid[100];

	if (ap->event_sub_url == NULL) {
		FUNC8(MSG_DEBUG, "WPS ER: No eventSubURL - cannot "
			   "subscribe");
		goto fail;
	}
	if (ap->http) {
		FUNC8(MSG_DEBUG, "WPS ER: Pending HTTP request - cannot "
			   "send subscribe request");
		goto fail;
	}

	url = FUNC1(ap->event_sub_url, &dst, &path);
	if (url == NULL) {
		FUNC8(MSG_DEBUG, "WPS ER: Failed to parse eventSubURL");
		goto fail;
	}

	req = FUNC9(FUNC5(ap->event_sub_url) + 1000);
	if (req == NULL) {
		FUNC4(url);
		goto fail;
	}
	FUNC6(ap->sid, sid, sizeof(sid));
	FUNC13(req,
		      "UNSUBSCRIBE %s HTTP/1.1\r\n"
		      "HOST: %s:%d\r\n"
		      "SID: uuid:%s\r\n"
		      "\r\n",
		      path, FUNC2(dst.sin_addr), FUNC3(dst.sin_port), sid);
	FUNC4(url);
	FUNC7(MSG_MSGDUMP, "WPS ER: Unsubscription request",
			  FUNC11(req), FUNC12(req));

	ap->http = FUNC0(&dst, req, 1000,
				    wps_er_http_unsubscribe_cb, ap);
	if (ap->http == NULL) {
		FUNC10(req);
		goto fail;
	}
	return;

fail:
	/*
	 * Need to get rid of the AP entry even when we fail to unsubscribe
	 * cleanly.
	 */
	FUNC14(ap->er, ap);
}