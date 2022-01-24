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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct request {int request_appended; int request_len; int trans_id; int request_type; struct evdns_request* handle; int /*<<< orphan*/ * prev; int /*<<< orphan*/  next; int /*<<< orphan*/ * ns; int /*<<< orphan*/  user_callback; void* user_pointer; scalar_t__ tx_count; int /*<<< orphan*/ * request; struct evdns_base* base; int /*<<< orphan*/  timeout_event; } ;
struct evdns_request {struct evdns_base* base; struct request* current_req; } ;
struct evdns_base {scalar_t__ global_requests_inflight; scalar_t__ global_max_requests_inflight; scalar_t__ global_randomize_case; int /*<<< orphan*/  event_base; } ;
typedef  int /*<<< orphan*/  namebuf ;
typedef  int /*<<< orphan*/  evdns_callback_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  CLASS_INET ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 (char const*,size_t const,int const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t const) ; 
 size_t FUNC3 (size_t const) ; 
 int /*<<< orphan*/  evdns_request_timeout_callback ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct request* const) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t const) ; 
 int /*<<< orphan*/  FUNC6 (struct request* const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct request* const) ; 
 struct request* FUNC8 (int) ; 
 int /*<<< orphan*/ * FUNC9 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 size_t FUNC11 (char const*) ; 
 int FUNC12 (struct evdns_base*) ; 

__attribute__((used)) static struct request *
FUNC13(struct evdns_base *base, struct evdns_request *handle, int type,
	    const char *name, int flags, evdns_callback_type callback,
	    void *user_ptr) {

	const char issuing_now =
	    (base->global_requests_inflight < base->global_max_requests_inflight) ? 1 : 0;

	const size_t name_len = FUNC11(name);
	const size_t request_max_len = FUNC3(name_len);
	const u16 trans_id = issuing_now ? FUNC12(base) : 0xffff;
	/* the request data is alloced in a single block with the header */
	struct request *const req =
	    FUNC8(sizeof(struct request) + request_max_len);
	int rlen;
	char namebuf[256];
	(void) flags;

	FUNC0(base);

	if (!req) return NULL;

	if (name_len >= sizeof(namebuf)) {
		FUNC7(req);
		return NULL;
	}

	FUNC6(req, 0, sizeof(struct request));
	req->base = base;

	FUNC4(&req->timeout_event, req->base->event_base, evdns_request_timeout_callback, req);

	if (base->global_randomize_case) {
		unsigned i;
		char randbits[(sizeof(namebuf)+7)/8];
		FUNC10(namebuf, name, sizeof(namebuf));
		FUNC5(randbits, (name_len+7)/8);
		for (i = 0; i < name_len; ++i) {
			if (FUNC1(namebuf[i])) {
				if ((randbits[i >> 3] & (1<<(i & 7))))
					namebuf[i] |= 0x20;
				else
					namebuf[i] &= ~0x20;
			}
		}
		name = namebuf;
	}

	/* request data lives just after the header */
	req->request = ((u8 *) req) + sizeof(struct request);
	/* denotes that the request data shouldn't be free()ed */
	req->request_appended = 1;
	rlen = FUNC2(name, name_len, trans_id,
	    type, CLASS_INET, req->request, request_max_len);
	if (rlen < 0)
		goto err1;

	req->request_len = rlen;
	req->trans_id = trans_id;
	req->tx_count = 0;
	req->request_type = type;
	req->user_pointer = user_ptr;
	req->user_callback = callback;
	req->ns = issuing_now ? FUNC9(base) : NULL;
	req->next = *(req->prev = NULL);
	req->handle = handle;
	if (handle) {
		handle->current_req = req;
		handle->base = base;
	}

	return req;
err1:
	FUNC7(req);
	return NULL;
}