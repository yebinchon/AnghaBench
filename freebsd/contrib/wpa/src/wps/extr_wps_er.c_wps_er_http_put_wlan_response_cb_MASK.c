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
struct wps_er_sta {int /*<<< orphan*/ * http; } ;
struct http_client {int dummy; } ;
typedef  enum http_client_event { ____Placeholder_http_client_event } http_client_event ;

/* Variables and functions */
#define  HTTP_CLIENT_FAILED 131 
#define  HTTP_CLIENT_INVALID_REPLY 130 
#define  HTTP_CLIENT_OK 129 
#define  HTTP_CLIENT_TIMEOUT 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(void *ctx, struct http_client *c,
					     enum http_client_event event)
{
	struct wps_er_sta *sta = ctx;

	switch (event) {
	case HTTP_CLIENT_OK:
		FUNC1(MSG_DEBUG, "WPS ER: PutWLANResponse OK");
		break;
	case HTTP_CLIENT_FAILED:
	case HTTP_CLIENT_INVALID_REPLY:
	case HTTP_CLIENT_TIMEOUT:
		FUNC1(MSG_DEBUG, "WPS ER: PutWLANResponse failed");
		break;
	}
	FUNC0(sta->http);
	sta->http = NULL;
}