#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct event_base {int dummy; } ;
struct TYPE_6__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_5__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {int tv_sec; scalar_t__ tv_usec; } ;
struct evdns_base {int global_max_reissues; int global_max_retransmits; int global_max_nameserver_timeout; int global_randomize_case; int disable_when_inactive; int /*<<< orphan*/  hostsdb; TYPE_3__ global_nameserver_probe_initial_timeout; TYPE_2__ global_getaddrinfo_allow_skew; int /*<<< orphan*/ * global_search_state; TYPE_1__ global_timeout; scalar_t__ global_requests_waiting; scalar_t__ global_requests_inflight; scalar_t__ global_good_nameservers; struct event_base* event_base; int /*<<< orphan*/ * server_head; int /*<<< orphan*/ * req_heads; int /*<<< orphan*/  lock; int /*<<< orphan*/ * req_waiting_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_OPTIONS_ALL ; 
 int EVDNS_BASE_ALL_FLAGS ; 
 int EVDNS_BASE_DISABLE_WHEN_INACTIVE ; 
 int EVDNS_BASE_INITIALIZE_NAMESERVERS ; 
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  EVDNS_LOG_WARN ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVTHREAD_LOCKTYPE_RECURSIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC5 (struct evdns_base*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct evdns_base*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct evdns_base*,int) ; 
 int /*<<< orphan*/  evdns_getaddrinfo ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct evdns_base*,int /*<<< orphan*/ ,int) ; 
 struct evdns_base* FUNC12 (int) ; 

struct evdns_base *
FUNC13(struct event_base *event_base, int flags)
{
	struct evdns_base *base;

	if (FUNC8() < 0) {
		FUNC10(EVDNS_LOG_WARN, "Unable to seed random number generator; "
		    "DNS can't run.");
		return NULL;
	}

	/* Give the evutil library a hook into its evdns-enabled
	 * functionality.  We can't just call evdns_getaddrinfo directly or
	 * else libevent-core will depend on libevent-extras. */
	FUNC9(evdns_getaddrinfo);

	base = FUNC12(sizeof(struct evdns_base));
	if (base == NULL)
		return (NULL);
	FUNC11(base, 0, sizeof(struct evdns_base));
	base->req_waiting_head = NULL;

	FUNC2(base->lock, EVTHREAD_LOCKTYPE_RECURSIVE);
	FUNC0(base);

	/* Set max requests inflight and allocate req_heads. */
	base->req_heads = NULL;

	FUNC7(base, 64);

	base->server_head = NULL;
	base->event_base = event_base;
	base->global_good_nameservers = base->global_requests_inflight =
		base->global_requests_waiting = 0;

	base->global_timeout.tv_sec = 5;
	base->global_timeout.tv_usec = 0;
	base->global_max_reissues = 1;
	base->global_max_retransmits = 3;
	base->global_max_nameserver_timeout = 3;
	base->global_search_state = NULL;
	base->global_randomize_case = 1;
	base->global_getaddrinfo_allow_skew.tv_sec = 3;
	base->global_getaddrinfo_allow_skew.tv_usec = 0;
	base->global_nameserver_probe_initial_timeout.tv_sec = 10;
	base->global_nameserver_probe_initial_timeout.tv_usec = 0;

	FUNC3(&base->hostsdb);

#define EVDNS_BASE_ALL_FLAGS (0x8001)
	if (flags & ~EVDNS_BASE_ALL_FLAGS) {
		flags = EVDNS_BASE_INITIALIZE_NAMESERVERS;
		FUNC10(EVDNS_LOG_WARN,
		    "Unrecognized flag passed to evdns_base_new(). Assuming "
		    "you meant EVDNS_BASE_INITIALIZE_NAMESERVERS.");
	}
#undef EVDNS_BASE_ALL_FLAGS

	if (flags & EVDNS_BASE_INITIALIZE_NAMESERVERS) {
		int r;
#ifdef _WIN32
		r = evdns_base_config_windows_nameservers(base);
#else
		r = FUNC6(base, DNS_OPTIONS_ALL, "/etc/resolv.conf");
#endif
		if (r == -1) {
			FUNC5(base, 0);
			return NULL;
		}
	}
	if (flags & EVDNS_BASE_DISABLE_WHEN_INACTIVE) {
		base->disable_when_inactive = 1;
	}

	FUNC1(base);
	return base;
}