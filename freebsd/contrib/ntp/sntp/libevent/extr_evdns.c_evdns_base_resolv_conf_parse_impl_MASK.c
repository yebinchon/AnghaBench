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
struct evdns_base {TYPE_1__* global_search_state; int /*<<< orphan*/  server_head; } ;
struct TYPE_2__ {scalar_t__ num_domains; } ;

/* Variables and functions */
 int DNS_OPTION_HOSTSFILE ; 
 int DNS_OPTION_NAMESERVERS ; 
 int DNS_OPTION_SEARCH ; 
 int /*<<< orphan*/  EVDNS_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct evdns_base*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*,char*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct evdns_base*,int) ; 
 int FUNC4 (char const* const,char**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const* const) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct evdns_base*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct evdns_base*) ; 
 char* FUNC9 (char*,char) ; 

__attribute__((used)) static int
FUNC10(struct evdns_base *base, int flags, const char *const filename) {
	size_t n;
	char *resolv;
	char *start;
	int err = 0;

	FUNC5(EVDNS_LOG_DEBUG, "Parsing resolv.conf file %s", filename);

	if (flags & DNS_OPTION_HOSTSFILE) {
		char *fname = FUNC2();
		FUNC0(base, fname);
		if (fname)
			FUNC6(fname);
	}

	if ((err = FUNC4(filename, &resolv, &n, 0)) < 0) {
		if (err == -1) {
			/* No file. */
			FUNC3(base, flags);
			return 1;
		} else {
			return 2;
		}
	}

	start = resolv;
	for (;;) {
		char *const newline = FUNC9(start, '\n');
		if (!newline) {
			FUNC7(base, start, flags);
			break;
		} else {
			*newline = 0;
			FUNC7(base, start, flags);
			start = newline + 1;
		}
	}

	if (!base->server_head && (flags & DNS_OPTION_NAMESERVERS)) {
		/* no nameservers were configured. */
		FUNC1(base, "127.0.0.1");
		err = 6;
	}
	if (flags & DNS_OPTION_SEARCH && (!base->global_search_state || base->global_search_state->num_domains == 0)) {
		FUNC8(base);
	}

	FUNC6(resolv);
	return err;
}