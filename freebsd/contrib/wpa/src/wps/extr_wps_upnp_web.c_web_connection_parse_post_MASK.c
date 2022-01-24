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
struct wpabuf {int dummy; } ;
struct upnp_wps_device_sm {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct http_request {int dummy; } ;
typedef  enum http_reply_code { ____Placeholder_http_reply_code } http_reply_code ;

/* Variables and functions */
 int HTTP_NOT_FOUND ; 
 int HTTP_OK ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int UPNP_INVALID_ACTION ; 
 int /*<<< orphan*/  UPNP_WPS_DEVICE_CONTROL_FILE ; 
 char* FUNC0 (struct http_request*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct http_request*,int,char const*,size_t,struct wpabuf*,char const*) ; 
 char* FUNC4 (struct http_request*,size_t*) ; 
 int FUNC5 (struct upnp_wps_device_sm*,struct wpabuf**,char const**) ; 
 int FUNC6 (struct upnp_wps_device_sm*,char*,struct wpabuf**,char const**) ; 
 int FUNC7 (struct upnp_wps_device_sm*,char*,struct wpabuf**,char const**) ; 
 int FUNC8 (struct upnp_wps_device_sm*,struct sockaddr_in*,char*,struct wpabuf**,char const**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC11(struct upnp_wps_device_sm *sm,
				      struct sockaddr_in *cli,
				      struct http_request *req,
				      const char *filename)
{
	enum http_reply_code ret;
	char *data = FUNC0(req); /* body of http msg */
	const char *action = NULL;
	size_t action_len = 0;
	const char *replyname = NULL; /* argument name for the reply */
	struct wpabuf *reply = NULL; /* data for the reply */

	if (FUNC1(filename, UPNP_WPS_DEVICE_CONTROL_FILE)) {
		FUNC9(MSG_INFO, "WPS UPnP: Invalid POST filename %s",
			   filename);
		ret = HTTP_NOT_FOUND;
		goto bad;
	}

	ret = UPNP_INVALID_ACTION;
	action = FUNC4(req, &action_len);
	if (action == NULL)
		goto bad;

	if (!FUNC2("GetDeviceInfo", action, action_len))
		ret = FUNC5(sm, &reply, &replyname);
	else if (!FUNC2("PutMessage", action, action_len))
		ret = FUNC6(sm, data, &reply, &replyname);
	else if (!FUNC2("PutWLANResponse", action, action_len))
		ret = FUNC7(sm, data, &reply,
						    &replyname);
	else if (!FUNC2("SetSelectedRegistrar", action, action_len))
		ret = FUNC8(sm, cli, data, &reply,
							 &replyname);
	else
		FUNC9(MSG_INFO, "WPS UPnP: Unknown POST type");

bad:
	if (ret != HTTP_OK)
		FUNC9(MSG_INFO, "WPS UPnP: POST failure ret=%d", ret);
	FUNC3(req, ret, action, action_len, reply,
				  replyname);
	FUNC10(reply);
}