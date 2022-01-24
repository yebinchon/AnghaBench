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
struct evdns_base {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int DNS_OPTION_NAMESERVERS ; 
 int DNS_OPTION_SEARCH ; 
 void* NEXT_TOKEN ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*,char const* const) ; 
 int /*<<< orphan*/  FUNC2 (struct evdns_base*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct evdns_base*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC5 (struct evdns_base*) ; 
 char* FUNC6 (char const*,char) ; 
 int /*<<< orphan*/  FUNC7 (char* const,char*) ; 
 char* FUNC8 (char* const,char const* const,char**) ; 

__attribute__((used)) static void
FUNC9(struct evdns_base *base, char *const start, int flags) {
	char *strtok_state;
	static const char *const delims = " \t";
#define NEXT_TOKEN strtok_r(NULL, delims, &strtok_state)


	char *const first_token = FUNC8(start, delims, &strtok_state);
	FUNC0(base);
	if (!first_token) return;

	if (!FUNC7(first_token, "nameserver") && (flags & DNS_OPTION_NAMESERVERS)) {
		const char *const nameserver = NEXT_TOKEN;

		if (nameserver)
			FUNC1(base, nameserver);
	} else if (!FUNC7(first_token, "domain") && (flags & DNS_OPTION_SEARCH)) {
		const char *const domain = NEXT_TOKEN;
		if (domain) {
			FUNC4(base);
			FUNC3(base, domain);
		}
	} else if (!FUNC7(first_token, "search") && (flags & DNS_OPTION_SEARCH)) {
		const char *domain;
		FUNC4(base);

		while ((domain = NEXT_TOKEN)) {
			FUNC3(base, domain);
		}
		FUNC5(base);
	} else if (!FUNC7(first_token, "options")) {
		const char *option;
		while ((option = NEXT_TOKEN)) {
			const char *val = FUNC6(option, ':');
			FUNC2(base, option, val ? val+1 : "", flags);
		}
	}
#undef NEXT_TOKEN
}