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
struct sockaddr {int dummy; } ;
struct request {struct nameserver* ns; } ;
struct nameserver {int /*<<< orphan*/  base; struct evdns_request* probe_request; int /*<<< orphan*/  address; } ;
struct evdns_request {int dummy; } ;
typedef  int /*<<< orphan*/  addrbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DNS_QUERY_NO_SEARCH ; 
 int /*<<< orphan*/  EVDNS_LOG_DEBUG ; 
 int /*<<< orphan*/  TYPE_A ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct evdns_request* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct evdns_request*) ; 
 int /*<<< orphan*/  nameserver_probe_callback ; 
 struct request* FUNC5 (int /*<<< orphan*/ ,struct evdns_request*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nameserver* const) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct nameserver *const ns) {
	struct evdns_request *handle;
	struct request *req;
	char addrbuf[128];
	/* here we need to send a probe to a given nameserver */
	/* in the hope that it is up now. */

	FUNC0(ns->base);
	FUNC2(EVDNS_LOG_DEBUG, "Sending probe to %s",
	    FUNC1(
		    (struct sockaddr *)&ns->address,
		    addrbuf, sizeof(addrbuf)));
	handle = FUNC3(1, sizeof(*handle));
	if (!handle) return;
	req = FUNC5(ns->base, handle, TYPE_A, "google.com", DNS_QUERY_NO_SEARCH, nameserver_probe_callback, ns);
	if (!req) {
		FUNC4(handle);
		return;
	}
	ns->probe_request = handle;
	/* we force this into the inflight queue no matter what */
	FUNC7(req, FUNC8(ns->base));
	req->ns = ns;
	FUNC6(req);
}