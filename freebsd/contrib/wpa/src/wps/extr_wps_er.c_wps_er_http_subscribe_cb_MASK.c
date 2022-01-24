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
struct wps_er_ap {int subscribed; int /*<<< orphan*/ * http; TYPE_1__* er; } ;
struct http_client {int dummy; } ;
typedef  enum http_client_event { ____Placeholder_http_client_event } http_client_event ;
struct TYPE_2__ {int /*<<< orphan*/  wps; } ;

/* Variables and functions */
#define  HTTP_CLIENT_FAILED 131 
#define  HTTP_CLIENT_INVALID_REPLY 130 
#define  HTTP_CLIENT_OK 129 
#define  HTTP_CLIENT_TIMEOUT 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPS_EV_ER_AP_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct http_client*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct wps_er_ap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct wps_er_ap*) ; 
 int /*<<< orphan*/  FUNC5 (struct wps_er_ap*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *ctx, struct http_client *c,
				     enum http_client_event event)
{
	struct wps_er_ap *ap = ctx;

	switch (event) {
	case HTTP_CLIENT_OK:
		FUNC2(MSG_DEBUG, "WPS ER: Subscribed to events");
		ap->subscribed = 1;
		FUNC5(ap, FUNC1(c, "SID"));
		FUNC4(ap->er, ap);
		FUNC3(ap->er->wps, ap, WPS_EV_ER_AP_ADD);
		break;
	case HTTP_CLIENT_FAILED:
	case HTTP_CLIENT_INVALID_REPLY:
	case HTTP_CLIENT_TIMEOUT:
		FUNC2(MSG_DEBUG, "WPS ER: Failed to subscribe to events");
		break;
	}
	FUNC0(ap->http);
	ap->http = NULL;
}