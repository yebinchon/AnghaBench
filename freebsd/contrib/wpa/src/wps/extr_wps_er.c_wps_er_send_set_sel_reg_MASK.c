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
struct wps_er_ap {int /*<<< orphan*/ * http; int /*<<< orphan*/ * control_url; scalar_t__ wps; } ;
struct wpabuf {int dummy; } ;
struct sockaddr_in {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/ * FUNC0 (struct sockaddr_in*,struct wpabuf*,int,int /*<<< orphan*/ ,struct wps_er_ap*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,struct sockaddr_in*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  wps_er_http_set_sel_reg_cb ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,char*,char*,char*) ; 
 struct wpabuf* FUNC6 (struct wpabuf*,char*,char*,char*,struct sockaddr_in*,char**,char**) ; 

__attribute__((used)) static void FUNC7(struct wps_er_ap *ap, struct wpabuf *msg)
{
	struct wpabuf *buf;
	char *len_ptr, *body_ptr;
	struct sockaddr_in dst;
	char *url, *path;

	if (ap->control_url == NULL) {
		FUNC3(MSG_DEBUG, "WPS ER: No controlURL for AP");
		return;
	}

	if (ap->http) {
		FUNC3(MSG_DEBUG, "WPS ER: Pending HTTP request for AP - "
			   "ignore new request");
		return;
	}

	if (ap->wps) {
		FUNC3(MSG_DEBUG, "WPS ER: Pending WPS operation for AP - "
			   "skip SetSelectedRegistrar");
		return;
	}

	url = FUNC1(ap->control_url, &dst, &path);
	if (url == NULL) {
		FUNC3(MSG_DEBUG, "WPS ER: Failed to parse controlURL");
		return;
	}

	buf = FUNC6(msg, "SetSelectedRegistrar", "NewMessage", path,
			      &dst, &len_ptr, &body_ptr);
	FUNC2(url);
	if (buf == NULL)
		return;

	FUNC5(buf, "SetSelectedRegistrar", len_ptr, body_ptr);

	ap->http = FUNC0(&dst, buf, 1000,
				    wps_er_http_set_sel_reg_cb, ap);
	if (ap->http == NULL)
		FUNC4(buf);
}