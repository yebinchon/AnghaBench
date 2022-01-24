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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct evbuffer* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*,size_t) ; 
 size_t FUNC5 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct evbuffer*,struct evbuffer*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC9 (struct evhttp_connection*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct evhttp_request*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct evhttp_connection*,struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC13 (struct evhttp_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct evhttp_connection *evcon, struct evhttp_request *req)
{
	struct evbuffer *buf = FUNC2(evcon->bufev);

	if (req->chunked) {
		switch (FUNC10(req, buf)) {
		case ALL_DATA_READ:
			/* finished last chunk */
			evcon->state = EVCON_READING_TRAILER;
			FUNC11(evcon, req);
			return;
		case DATA_CORRUPTED:
		case DATA_TOO_LONG:
			/* corrupted data */
			FUNC9(evcon,
			    EVREQ_HTTP_DATA_TOO_LONG);
			return;
		case REQUEST_CANCELED:
			/* request canceled */
			FUNC12(req);
			return;
		case MORE_DATA_EXPECTED:
		default:
			break;
		}
	} else if (req->ntoread < 0) {
		/* Read until connection close. */
		if ((size_t)(req->body_size + FUNC5(buf)) < req->body_size) {
			FUNC9(evcon, EVREQ_HTTP_INVALID_HEADER);
			return;
		}

		req->body_size += FUNC5(buf);
		FUNC3(req->input_buffer, buf);
	} else if (req->chunk_cb != NULL || FUNC5(buf) >= (size_t)req->ntoread) {
		/* XXX: the above get_length comparison has to be fixed for overflow conditions! */
		/* We've postponed moving the data until now, but we're
		 * about to use it. */
		size_t n = FUNC5(buf);

		if (n > (size_t) req->ntoread)
			n = (size_t) req->ntoread;
		req->ntoread -= n;
		req->body_size += n;
		FUNC6(buf, req->input_buffer, n);
	}

	if (req->body_size > req->evcon->max_body_size ||
	    (!req->chunked && req->ntoread >= 0 &&
		(size_t)req->ntoread > req->evcon->max_body_size)) {
		/* XXX: The above casted comparison must checked for overflow */
		/* failed body length test */
		FUNC7(("Request body is too long"));
		FUNC9(evcon,
				       EVREQ_HTTP_DATA_TOO_LONG);
		return;
	}

	if (FUNC5(req->input_buffer) > 0 && req->chunk_cb != NULL) {
		req->flags |= EVHTTP_REQ_DEFER_FREE;
		(*req->chunk_cb)(req, req->cb_arg);
		req->flags &= ~EVHTTP_REQ_DEFER_FREE;
		FUNC4(req->input_buffer,
		    FUNC5(req->input_buffer));
		if ((req->flags & EVHTTP_REQ_NEEDS_FREE) != 0) {
			FUNC12(req);
			return;
		}
	}

	if (req->ntoread == 0) {
		FUNC0(evcon->bufev, EV_READ);
		/* Completed content length */
		FUNC8(evcon);
		return;
	}

	/* Read more! */
	FUNC1(evcon->bufev, EV_READ);
}