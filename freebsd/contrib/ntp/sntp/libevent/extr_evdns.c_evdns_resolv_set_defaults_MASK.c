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
 int /*<<< orphan*/  FUNC1 (struct evdns_base*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct evdns_base*) ; 

__attribute__((used)) static void
FUNC3(struct evdns_base *base, int flags) {
	/* if the file isn't found then we assume a local resolver */
	FUNC0(base);
	if (flags & DNS_OPTION_SEARCH) FUNC2(base);
	if (flags & DNS_OPTION_NAMESERVERS) FUNC1(base,"127.0.0.1");
}