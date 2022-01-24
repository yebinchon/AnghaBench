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
struct wps_er_ap {int /*<<< orphan*/ * wps; int /*<<< orphan*/ * http; } ;
struct wpabuf {int dummy; } ;
struct http_client {int dummy; } ;
typedef  enum http_reply_code { ____Placeholder_http_reply_code } http_reply_code ;
typedef  enum http_client_event { ____Placeholder_http_client_event } http_client_event ;

/* Variables and functions */
#define  HTTP_CLIENT_FAILED 131 
#define  HTTP_CLIENT_INVALID_REPLY 130 
#define  HTTP_CLIENT_OK 129 
#define  HTTP_CLIENT_TIMEOUT 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC1 (struct http_client*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct wps_er_ap*,struct wpabuf*) ; 
 struct wpabuf* FUNC11 (char*,char*,int*) ; 

__attribute__((used)) static void FUNC12(void *ctx, struct http_client *c,
				       enum http_client_event event)
{
	struct wps_er_ap *ap = ctx;
	struct wpabuf *reply;
	char *msg = NULL;

	switch (event) {
	case HTTP_CLIENT_OK:
		FUNC5(MSG_DEBUG, "WPS ER: PutMessage OK");
		reply = FUNC1(c);
		if (reply)
			msg = FUNC4(FUNC8(reply) + 1);
		if (msg == NULL) {
			if (ap->wps) {
				FUNC9(ap->wps);
				ap->wps = NULL;
			}
			break;
		}
		FUNC3(msg, FUNC7(reply), FUNC8(reply));
		break;
	case HTTP_CLIENT_FAILED:
	case HTTP_CLIENT_INVALID_REPLY:
	case HTTP_CLIENT_TIMEOUT:
		FUNC5(MSG_DEBUG, "WPS ER: PutMessage failed");
		if (ap->wps) {
			FUNC9(ap->wps);
			ap->wps = NULL;
		}
		break;
	}
	FUNC0(ap->http);
	ap->http = NULL;

	if (msg) {
		struct wpabuf *buf;
		enum http_reply_code ret;
		buf = FUNC11(msg, "NewOutMessage", &ret);
		FUNC2(msg);
		if (buf == NULL) {
			FUNC5(MSG_DEBUG, "WPS ER: Could not extract "
				   "NewOutMessage from PutMessage response");
			FUNC9(ap->wps);
			ap->wps = NULL;
			return;
		}
		FUNC10(ap, buf);
		FUNC6(buf);
	}
}