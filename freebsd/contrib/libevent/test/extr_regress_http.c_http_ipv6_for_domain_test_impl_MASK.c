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
struct basic_test_data {int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;
typedef  int /*<<< orphan*/  address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*,char*) ; 
 struct evdns_base* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,char*,struct evdns_base*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipv6_search_table ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct evdns_base* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct evdns_base*) ; 

__attribute__((used)) static void
FUNC8(void *arg, int family)
{
	struct basic_test_data *data = arg;
	struct evdns_base *dns_base = NULL;
	ev_uint16_t portnum = 0;
	char address[64];

	FUNC7(FUNC6(data->base, &portnum, ipv6_search_table));

	dns_base = FUNC2(data->base, 0/* init name servers */);
	FUNC7(dns_base);

	/* Add ourself as the only nameserver, and make sure we really are
	 * the only nameserver. */
	FUNC3(address, sizeof(address), "127.0.0.1:%d", portnum);
	FUNC1(dns_base, address);

	FUNC4(arg, 0 /* not persistent */, "localhost", dns_base,
		1 /* ipv6 */, family, 0);

 end:
	if (dns_base)
		FUNC0(dns_base, 0);
	FUNC5();
}