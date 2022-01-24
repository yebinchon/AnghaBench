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
struct upnp_wps_device_sm {int dummy; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct http_request {int dummy; } ;
typedef  enum httpread_hdr_type { ____Placeholder_httpread_hdr_type } httpread_hdr_type ;

/* Variables and functions */
#define  HTTPREAD_HDR_TYPE_GET 131 
#define  HTTPREAD_HDR_TYPE_POST 130 
#define  HTTPREAD_HDR_TYPE_SUBSCRIBE 129 
#define  HTTPREAD_HDR_TYPE_UNSUBSCRIBE 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct http_request*) ; 
 struct sockaddr_in* FUNC2 (struct http_request*) ; 
 int FUNC3 (struct http_request*) ; 
 char* FUNC4 (struct http_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct upnp_wps_device_sm*,struct http_request*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct upnp_wps_device_sm*,struct sockaddr_in*,struct http_request*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct upnp_wps_device_sm*,struct http_request*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct upnp_wps_device_sm*,struct http_request*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct http_request*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC12(void *ctx, struct http_request *req)
{
	struct upnp_wps_device_sm *sm = ctx;
	enum httpread_hdr_type htype = FUNC3(req);
	char *filename = FUNC4(req);
	struct sockaddr_in *cli = FUNC2(req);

	if (!filename) {
		FUNC11(MSG_INFO, "WPS UPnP: Could not get HTTP URI");
		FUNC1(req);
		return;
	}
	/* Trim leading slashes from filename */
	while (*filename == '/')
		filename++;

	FUNC11(MSG_DEBUG, "WPS UPnP: Got HTTP request type %d from %s:%d",
		   htype, FUNC5(cli->sin_addr), FUNC0(cli->sin_port));

	switch (htype) {
	case HTTPREAD_HDR_TYPE_GET:
		FUNC6(sm, req, filename);
		break;
	case HTTPREAD_HDR_TYPE_POST:
		FUNC7(sm, cli, req, filename);
		break;
	case HTTPREAD_HDR_TYPE_SUBSCRIBE:
		FUNC8(sm, req, filename);
		break;
	case HTTPREAD_HDR_TYPE_UNSUBSCRIBE:
		FUNC9(sm, req, filename);
		break;

		/* We are not required to support M-POST; just plain
		 * POST is supposed to work, so we only support that.
		 * If for some reason we need to support M-POST, it is
		 * mostly the same as POST, with small differences.
		 */
	default:
		/* Send 501 for anything else */
		FUNC10(req);
		break;
	}
}