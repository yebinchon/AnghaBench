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
struct httpread {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct http_client {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ ) ;TYPE_1__ dst; int /*<<< orphan*/  hread; } ;
typedef  enum httpread_event { ____Placeholder_httpread_event } httpread_event ;

/* Variables and functions */
#define  HTTPREAD_EVENT_ERROR 130 
#define  HTTPREAD_EVENT_FILE_READY 129 
#define  HTTPREAD_EVENT_TIMEOUT 128 
 int /*<<< orphan*/  HTTPREAD_HDR_TYPE_REPLY ; 
 int /*<<< orphan*/  HTTP_CLIENT_FAILED ; 
 int /*<<< orphan*/  HTTP_CLIENT_INVALID_REPLY ; 
 int /*<<< orphan*/  HTTP_CLIENT_OK ; 
 int /*<<< orphan*/  HTTP_CLIENT_TIMEOUT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  http_client_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,void*,...) ; 

__attribute__((used)) static void FUNC11(struct httpread *handle, void *cookie,
				     enum httpread_event e)
{
	struct http_client *c = cookie;

	FUNC10(MSG_DEBUG, "HTTP: httpread callback: handle=%p cookie=%p "
		   "e=%d", handle, cookie, e);

	FUNC0(http_client_timeout, c, NULL);
	switch (e) {
	case HTTPREAD_EVENT_FILE_READY:
		if (FUNC1(c->hread) == HTTPREAD_HDR_TYPE_REPLY)
		{
			int reply_code = FUNC2(c->hread);
			if (reply_code == 200 /* OK */) {
				FUNC10(MSG_DEBUG, "HTTP: Response OK from "
					   "%s:%d",
					   FUNC3(c->dst.sin_addr),
					   FUNC4(c->dst.sin_port));
				c->cb(c->cb_ctx, c, HTTP_CLIENT_OK);
			} else {
				FUNC10(MSG_DEBUG, "HTTP: Error %d from "
					   "%s:%d", reply_code,
					   FUNC3(c->dst.sin_addr),
					   FUNC4(c->dst.sin_port));
				c->cb(c->cb_ctx, c, HTTP_CLIENT_INVALID_REPLY);
			}
		} else
			c->cb(c->cb_ctx, c, HTTP_CLIENT_INVALID_REPLY);
		break;
	case HTTPREAD_EVENT_TIMEOUT:
		c->cb(c->cb_ctx, c, HTTP_CLIENT_TIMEOUT);
		break;
	case HTTPREAD_EVENT_ERROR:
		c->cb(c->cb_ctx, c, HTTP_CLIENT_FAILED);
		break;
	}
}