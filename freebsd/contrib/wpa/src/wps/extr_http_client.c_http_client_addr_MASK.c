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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct http_client {int sd; size_t max_response; void (* cb ) (void*,struct http_client*,int) ;struct wpabuf* req; void* cb_ctx; struct sockaddr_in dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  EVENT_TYPE_WRITE ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  HTTP_CLIENT_TIMEOUT_SEC ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct http_client*,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct http_client*) ; 
 int /*<<< orphan*/  http_client_timeout ; 
 int /*<<< orphan*/  http_client_tx_ready ; 
 struct http_client* FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

struct http_client * FUNC9(struct sockaddr_in *dst,
				      struct wpabuf *req, size_t max_response,
				      void (*cb)(void *ctx,
						 struct http_client *c,
						 enum http_client_event event),
				      void *cb_ctx)
{
	struct http_client *c;

	c = FUNC5(sizeof(*c));
	if (c == NULL)
		return NULL;
	c->sd = -1;
	c->dst = *dst;
	c->max_response = max_response;
	c->cb = cb;
	c->cb_ctx = cb_ctx;

	c->sd = FUNC6(AF_INET, SOCK_STREAM, 0);
	if (c->sd < 0)
		goto fail;

	if (FUNC3(c->sd, F_SETFL, O_NONBLOCK) != 0) {
		FUNC8(MSG_DEBUG, "HTTP: fnctl(O_NONBLOCK) failed: %s",
			   FUNC7(errno));
		goto fail;
	}

	if (FUNC0(c->sd, (struct sockaddr *) dst, sizeof(*dst))) {
		if (errno != EINPROGRESS) {
			FUNC8(MSG_DEBUG, "HTTP: Failed to connect: %s",
				   FUNC7(errno));
			goto fail;
		}

		/*
		 * Continue connecting in the background; eloop will call us
		 * once the connection is ready (or failed).
		 */
	}

	if (FUNC1(c->sd, EVENT_TYPE_WRITE, http_client_tx_ready,
				c, NULL) ||
	    FUNC2(HTTP_CLIENT_TIMEOUT_SEC, 0,
				   http_client_timeout, c, NULL))
		goto fail;

	c->req = req;

	return c;

fail:
	FUNC4(c);
	return NULL;
}