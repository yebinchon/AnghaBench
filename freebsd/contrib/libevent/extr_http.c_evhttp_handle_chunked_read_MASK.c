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
struct evhttp_request {scalar_t__ ntoread; scalar_t__ body_size; int flags; struct evbuffer* input_buffer; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* chunk_cb ) (struct evhttp_request*,int /*<<< orphan*/ ) ;TYPE_1__* evcon; } ;
struct evbuffer {int dummy; } ;
typedef  scalar_t__ ev_uint64_t ;
typedef  scalar_t__ ev_int64_t ;
typedef  enum message_read_status { ____Placeholder_message_read_status } message_read_status ;
struct TYPE_2__ {scalar_t__ max_body_size; } ;

/* Variables and functions */
 int ALL_DATA_READ ; 
 int DATA_CORRUPTED ; 
 int DATA_TOO_LONG ; 
 int /*<<< orphan*/  EVBUFFER_EOL_CRLF ; 
 int EVHTTP_REQ_DEFER_FREE ; 
 int EVHTTP_REQ_NEEDS_FREE ; 
 scalar_t__ EV_SIZE_MAX ; 
 size_t EV_SSIZE_MAX ; 
 int MORE_DATA_EXPECTED ; 
 int REQUEST_CANCELED ; 
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,size_t) ; 
 size_t FUNC1 (struct evbuffer*) ; 
 char* FUNC2 (struct evbuffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,struct evbuffer*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct evhttp_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum message_read_status
FUNC9(struct evhttp_request *req, struct evbuffer *buf)
{
	if (req == NULL || buf == NULL) {
	    return DATA_CORRUPTED;
	}

	while (1) {
		size_t buflen;

		if ((buflen = FUNC1(buf)) == 0) {
			break;
		}

		/* evbuffer_get_length returns size_t, but len variable is ssize_t,
		 * check for overflow conditions */
		if (buflen > EV_SSIZE_MAX) {
			return DATA_CORRUPTED;
		}

		if (req->ntoread < 0) {
			/* Read chunk size */
			ev_int64_t ntoread;
			char *p = FUNC2(buf, NULL, EVBUFFER_EOL_CRLF);
			char *endp;
			int error;
			if (p == NULL)
				break;
			/* the last chunk is on a new line? */
			if (FUNC7(p) == 0) {
				FUNC6(p);
				continue;
			}
			ntoread = FUNC5(p, &endp, 16);
			error = (*p == '\0' ||
			    (*endp != '\0' && *endp != ' ') ||
			    ntoread < 0);
			FUNC6(p);
			if (error) {
				/* could not get chunk size */
				return (DATA_CORRUPTED);
			}

			/* ntoread is signed int64, body_size is unsigned size_t, check for under/overflow conditions */
			if ((ev_uint64_t)ntoread > EV_SIZE_MAX - req->body_size) {
			    return DATA_CORRUPTED;
			}

			if (req->body_size + (size_t)ntoread > req->evcon->max_body_size) {
				/* failed body length test */
				FUNC4(("Request body is too long"));
				return (DATA_TOO_LONG);
			}

			req->body_size += (size_t)ntoread;
			req->ntoread = ntoread;
			if (req->ntoread == 0) {
				/* Last chunk */
				return (ALL_DATA_READ);
			}
			continue;
		}

		/* req->ntoread is signed int64, len is ssize_t, based on arch,
		 * ssize_t could only be 32b, check for these conditions */
		if (req->ntoread > EV_SSIZE_MAX) {
			return DATA_CORRUPTED;
		}

		/* don't have enough to complete a chunk; wait for more */
		if (req->ntoread > 0 && buflen < (ev_uint64_t)req->ntoread)
			return (MORE_DATA_EXPECTED);

		/* Completed chunk */
		FUNC3(buf, req->input_buffer, (size_t)req->ntoread);
		req->ntoread = -1;
		if (req->chunk_cb != NULL) {
			req->flags |= EVHTTP_REQ_DEFER_FREE;
			(*req->chunk_cb)(req, req->cb_arg);
			FUNC0(req->input_buffer,
			    FUNC1(req->input_buffer));
			req->flags &= ~EVHTTP_REQ_DEFER_FREE;
			if ((req->flags & EVHTTP_REQ_NEEDS_FREE) != 0) {
				return (REQUEST_CANCELED);
			}
		}
	}

	return (MORE_DATA_EXPECTED);
}