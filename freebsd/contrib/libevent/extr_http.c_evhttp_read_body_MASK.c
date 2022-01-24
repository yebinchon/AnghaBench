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
struct evhttp_request {scalar_t__ ntoread; size_t body_size; int flags; struct evbuffer* input_buffer; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* chunk_cb ) (struct evhttp_request*,int /*<<< orphan*/ ) ;TYPE_1__* evcon; scalar_t__ chunked; } ;
struct evhttp_connection {int /*<<< orphan*/  bufev; int /*<<< orphan*/  state; } ;
struct evbuffer {int dummy; } ;
struct TYPE_2__ {size_t max_body_size; } ;

/* Variables and functions */
#define  ALL_DATA_READ 132 
#define  DATA_CORRUPTED 131 
#define  DATA_TOO_LONG 130 
 int /*<<< orphan*/  EVCON_READING_TRAILER ; 
 int EVHTTP_REQ_DEFER_FREE ; 
 int EVHTTP_REQ_NEEDS_FREE ; 
 int /*<<< orphan*/  EVREQ_HTTP_DATA_TOO_LONG ; 
 int /*<<< orphan*/  EVREQ_HTTP_INVALID_HEADER ; 
 int /*<<< orphan*/  EV_READ ; 
#define  MORE_DATA_EXPECTED 129 
#define  REQUEST_CANCELED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct evbuffer* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,size_t) ; 
 size_t FUNC4 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*,struct evbuffer*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct evhttp_connection*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct evhttp_request*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct evhttp_connection*,struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct evhttp_connection*,struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct evhttp_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct evhttp_connection *evcon, struct evhttp_request *req)
{
	struct evbuffer *buf = FUNC1(evcon->bufev);

	if (req->chunked) {
		switch (FUNC8(req, buf)) {
		case ALL_DATA_READ:
			/* finished last chunk */
			evcon->state = EVCON_READING_TRAILER;
			FUNC10(evcon, req);
			return;
		case DATA_CORRUPTED:
		case DATA_TOO_LONG:
			/* corrupted data */
			FUNC7(evcon,
			    EVREQ_HTTP_DATA_TOO_LONG);
			return;
		case REQUEST_CANCELED:
			/* request canceled */
			FUNC11(req);
			return;
		case MORE_DATA_EXPECTED:
		default:
			break;
		}
	} else if (req->ntoread < 0) {
		/* Read until connection close. */
		if ((size_t)(req->body_size + FUNC4(buf)) < req->body_size) {
			FUNC7(evcon, EVREQ_HTTP_INVALID_HEADER);
			return;
		}

		req->body_size += FUNC4(buf);
		FUNC2(req->input_buffer, buf);
	} else if (req->chunk_cb != NULL || FUNC4(buf) >= (size_t)req->ntoread) {
		/* XXX: the above get_length comparison has to be fixed for overflow conditions! */
		/* We've postponed moving the data until now, but we're
		 * about to use it. */
		size_t n = FUNC4(buf);

		if (n > (size_t) req->ntoread)
			n = (size_t) req->ntoread;
		req->ntoread -= n;
		req->body_size += n;
		FUNC5(buf, req->input_buffer, n);
	}

	if (req->body_size > req->evcon->max_body_size ||
	    (!req->chunked && req->ntoread >= 0 &&
		(size_t)req->ntoread > req->evcon->max_body_size)) {
		/* XXX: The above casted comparison must checked for overflow */
		/* failed body length test */

		FUNC9(evcon, req);
		return;
	}

	if (FUNC4(req->input_buffer) > 0 && req->chunk_cb != NULL) {
		req->flags |= EVHTTP_REQ_DEFER_FREE;
		(*req->chunk_cb)(req, req->cb_arg);
		req->flags &= ~EVHTTP_REQ_DEFER_FREE;
		FUNC3(req->input_buffer,
		    FUNC4(req->input_buffer));
		if ((req->flags & EVHTTP_REQ_NEEDS_FREE) != 0) {
			FUNC11(req);
			return;
		}
	}

	if (!req->ntoread) {
		FUNC0(evcon->bufev, EV_READ);
		/* Completed content length */
		FUNC6(evcon);
		return;
	}
}