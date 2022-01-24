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
 int /*<<< orphan*/  FUNC4 (void*,char*,struct evdns_base*,int) ; 
 struct evdns_base* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  search_table ; 
 int /*<<< orphan*/  FUNC6 (struct evdns_base*) ; 

__attribute__((used)) static void
FUNC7(void *arg, int ssl)
{
	struct basic_test_data *data = arg;
	ev_uint16_t portnum = 0;
	struct evdns_base *dns_base = NULL;
	char address[64];

	FUNC6(FUNC5(data->base, &portnum, search_table));
	dns_base = FUNC2(data->base, 0/* init name servers */);
	FUNC6(dns_base);

	/* Add ourself as the only nameserver, and make sure we really are
	 * the only nameserver. */
	FUNC3(address, sizeof(address), "127.0.0.1:%d", portnum);
	FUNC1(dns_base, address);

	FUNC4(arg, "localhost", dns_base, ssl);

 end:
	if (dns_base)
		FUNC0(dns_base, 0);
	/** dnsserver will be cleaned in http_connection_retry_test_basic() */
}