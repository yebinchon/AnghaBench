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
struct TYPE_2__ {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct http_client {size_t req_pos; int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * hread; int /*<<< orphan*/  max_response; int /*<<< orphan*/  sd; int /*<<< orphan*/ * req; TYPE_1__ dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_TYPE_WRITE ; 
 int /*<<< orphan*/  HTTP_CLIENT_FAILED ; 
 int /*<<< orphan*/  HTTP_CLIENT_TIMEOUT_SEC ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  http_client_got_response ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 
 size_t FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(int sock, void *eloop_ctx, void *sock_ctx)
{
	struct http_client *c = eloop_ctx;
	int res;
	size_t send_len;

	send_len = FUNC11(c->req) - c->req_pos;
	FUNC8(MSG_DEBUG, "HTTP: Send client request to %s:%d (%lu of %lu "
		   "bytes remaining)",
		   FUNC2(c->dst.sin_addr), FUNC3(c->dst.sin_port),
		   (unsigned long) FUNC11(c->req),
		   (unsigned long) send_len);

	res = FUNC4(c->sd, FUNC10(c->req) + c->req_pos, send_len, 0);
	if (res < 0) {
		FUNC8(MSG_DEBUG, "HTTP: Failed to send buffer: %s",
			   FUNC5(errno));
		FUNC0(c->sd, EVENT_TYPE_WRITE);
		c->cb(c->cb_ctx, c, HTTP_CLIENT_FAILED);
		return;
	}

	if ((size_t) res < send_len) {
		FUNC8(MSG_DEBUG, "HTTP: Sent %d of %lu bytes; %lu bytes "
			   "remaining",
			   res, (unsigned long) FUNC11(c->req),
			   (unsigned long) send_len - res);
		c->req_pos += res;
		return;
	}

	FUNC8(MSG_DEBUG, "HTTP: Full client request sent to %s:%d",
		   FUNC2(c->dst.sin_addr), FUNC3(c->dst.sin_port));
	FUNC0(c->sd, EVENT_TYPE_WRITE);
	FUNC9(c->req);
	c->req = NULL;

	c->hread = FUNC1(c->sd, http_client_got_response, c,
				   c->max_response, HTTP_CLIENT_TIMEOUT_SEC);
	if (c->hread == NULL) {
		c->cb(c->cb_ctx, c, HTTP_CLIENT_FAILED);
		return;
	}
}