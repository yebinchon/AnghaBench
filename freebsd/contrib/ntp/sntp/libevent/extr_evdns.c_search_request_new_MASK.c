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
typedef  char request ;
struct evdns_request {int search_index; int search_flags; TYPE_1__* search_state; int /*<<< orphan*/ * search_origname; int /*<<< orphan*/ * current_req; } ;
struct evdns_base {TYPE_1__* global_search_state; } ;
typedef  int /*<<< orphan*/  evdns_callback_type ;
struct TYPE_2__ {scalar_t__ ndots; int /*<<< orphan*/  refcount; scalar_t__ num_domains; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int DNS_QUERY_NO_SEARCH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int TYPE_A ; 
 int TYPE_AAAA ; 
 int /*<<< orphan*/  FUNC2 (char* const) ; 
 int /*<<< orphan*/ * FUNC3 (char const* const) ; 
 void* FUNC4 (struct evdns_base*,struct evdns_request*,int,char const* const,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (char* const) ; 
 char* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char const* const) ; 
 scalar_t__ FUNC7 (char const* const) ; 

__attribute__((used)) static struct request *
FUNC8(struct evdns_base *base, struct evdns_request *handle,
		   int type, const char *const name, int flags,
		   evdns_callback_type user_callback, void *user_arg) {
	FUNC0(base);
	FUNC1(type == TYPE_A || type == TYPE_AAAA);
	FUNC1(handle->current_req == NULL);
	if ( ((flags & DNS_QUERY_NO_SEARCH) == 0) &&
	     base->global_search_state &&
		 base->global_search_state->num_domains) {
		/* we have some domains to search */
		struct request *req;
		if (FUNC7(name) >= base->global_search_state->ndots) {
			req = FUNC4(base, handle, type, name, flags, user_callback, user_arg);
			if (!req) return NULL;
			handle->search_index = -1;
		} else {
			char *const new_name = FUNC6(base->global_search_state, 0, name);
			if (!new_name) return NULL;
			req = FUNC4(base, handle, type, new_name, flags, user_callback, user_arg);
			FUNC2(new_name);
			if (!req) return NULL;
			handle->search_index = 0;
		}
		FUNC1(handle->search_origname == NULL);
		handle->search_origname = FUNC3(name);
		if (handle->search_origname == NULL) {
			/* XXX Should we dealloc req? If yes, how? */
			if (req)
				FUNC2(req);
			return NULL;
		}
		handle->search_state = base->global_search_state;
		handle->search_flags = flags;
		base->global_search_state->refcount++;
		FUNC5(req);
		return req;
	} else {
		struct request *const req = FUNC4(base, handle, type, name, flags, user_callback, user_arg);
		if (!req) return NULL;
		FUNC5(req);
		return req;
	}
}