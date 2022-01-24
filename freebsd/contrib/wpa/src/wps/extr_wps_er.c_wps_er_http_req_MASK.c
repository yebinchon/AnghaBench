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
struct wps_er {int dummy; } ;
struct wpabuf {int dummy; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct http_request {int dummy; } ;
typedef  enum httpread_hdr_type { ____Placeholder_httpread_hdr_type } httpread_hdr_type ;

/* Variables and functions */
#define  HTTPREAD_HDR_TYPE_NOTIFY 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct http_request*) ; 
 struct sockaddr_in* FUNC2 (struct http_request*) ; 
 int FUNC3 (struct http_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct http_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct http_request*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct wpabuf* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct wps_er*,struct http_request*) ; 

__attribute__((used)) static void FUNC12(void *ctx, struct http_request *req)
{
	struct wps_er *er = ctx;
	struct sockaddr_in *cli = FUNC2(req);
	enum httpread_hdr_type type = FUNC3(req);
	struct wpabuf *buf;

	FUNC8(MSG_DEBUG, "WPS ER: HTTP request: '%s' (type %d) from "
		   "%s:%d",
		   FUNC4(req), type,
		   FUNC6(cli->sin_addr), FUNC7(cli->sin_port));

	switch (type) {
	case HTTPREAD_HDR_TYPE_NOTIFY:
		FUNC11(er, req);
		break;
	default:
		FUNC8(MSG_DEBUG, "WPS ER: Unsupported HTTP request type "
			   "%d", type);
		buf = FUNC9(200);
		if (buf == NULL) {
			FUNC1(req);
			return;
		}
		FUNC10(buf,
			       "HTTP/1.1 501 Unimplemented\r\n"
			       "Connection: close\r\n");
		FUNC0(buf);
		FUNC10(buf, "\r\n");
		FUNC5(req, buf);
		break;
	}
}