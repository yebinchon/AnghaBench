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
struct evhttp_request {int /*<<< orphan*/  kind; } ;
struct evhttp_connection {int flags; int /*<<< orphan*/  bufev; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int EVHTTP_CON_READING_ERROR ; 
 int /*<<< orphan*/  EVHTTP_RESPONSE ; 
 int /*<<< orphan*/  EVREQ_HTTP_EOF ; 
 struct evbuffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_connection*) ; 

__attribute__((used)) static void
FUNC7(struct evhttp_connection *evcon,
    struct evhttp_request *req)
{
	struct evbuffer *buf;

	/** Second time, we can't read anything */
	if (evcon->flags & EVHTTP_CON_READING_ERROR) {
		evcon->flags &= ~EVHTTP_CON_READING_ERROR;
		FUNC5(evcon, EVREQ_HTTP_EOF);
		return;
	}

	req->kind = EVHTTP_RESPONSE;

	buf = FUNC0(evcon->bufev);
	FUNC4(buf, 1);
	FUNC1(buf, FUNC3(buf));
	FUNC2(buf, 1);

	FUNC6(evcon);
	evcon->flags |= EVHTTP_CON_READING_ERROR;
}