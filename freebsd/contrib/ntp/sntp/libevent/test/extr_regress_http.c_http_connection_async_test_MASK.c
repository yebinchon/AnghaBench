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
struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
typedef  struct evhttp_connection evdns_base ;
struct basic_test_data {void* base; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;
typedef  int /*<<< orphan*/  address ;

/* Variables and functions */
 scalar_t__ BASIC_REQUEST_BODY ; 
 int /*<<< orphan*/  EVHTTP_REQ_GET ; 
 int /*<<< orphan*/  FUNC0 (struct evhttp_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evhttp_connection*,char*) ; 
 struct evhttp_connection* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 struct evhttp_connection* FUNC5 (void*,struct evhttp_connection*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (struct evhttp_connection*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC10 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 void* exit_base ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ http ; 
 int /*<<< orphan*/  http_request_done ; 
 int /*<<< orphan*/  http_request_empty_done ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 struct evhttp_connection* FUNC16 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  search_table ; 
 int /*<<< orphan*/  stdout ; 
 struct evhttp_connection* test_ok ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (struct evhttp_connection*) ; 

__attribute__((used)) static void
FUNC19(void *arg)
{
	struct basic_test_data *data = arg;
	ev_uint16_t port = 0;
	struct evhttp_connection *evcon = NULL;
	struct evhttp_request *req = NULL;
	struct evdns_base *dns_base = NULL;
	ev_uint16_t portnum = 0;
	char address[64];

	exit_base = data->base;
	FUNC18(FUNC16(data->base, &portnum, search_table));

	dns_base = FUNC2(data->base, 0/* init name servers */);
	FUNC18(dns_base);

	/* Add ourself as the only nameserver, and make sure we really are
	 * the only nameserver. */
	FUNC11(address, sizeof(address), "127.0.0.1:%d", portnum);
	FUNC1(dns_base, address);

	test_ok = 0;

	http = FUNC14(&port, data->base, 0);

	evcon = FUNC5(data->base, dns_base, "127.0.0.1", port);
	FUNC18(evcon);

	/*
	 * At this point, we want to schedule a request to the HTTP
	 * server using our make request method.
	 */

	req = FUNC10(http_request_done, (void*) BASIC_REQUEST_BODY);

	/* Add the information that we care about */
	FUNC4(FUNC9(req), "Host", "somehost");

	/* We give ownership of the request to the connection */
	if (FUNC8(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
		FUNC13(stdout, "FAILED\n");
		FUNC12(1);
	}

	FUNC3(data->base);

	FUNC18(test_ok);

	/* try to make another request over the same connection */
	test_ok = 0;

	req = FUNC10(http_request_done, (void*) BASIC_REQUEST_BODY);

	/* Add the information that we care about */
	FUNC4(FUNC9(req), "Host", "somehost");

	/*
	 * if our connections are not supposed to be persistent; request
	 * a close from the server.
	 */
	FUNC4(FUNC9(req), "Connection", "close");

	/* We give ownership of the request to the connection */
	if (FUNC8(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
		FUNC17("couldn't make request");
	}

	FUNC3(data->base);

	/* make another request: request empty reply */
	test_ok = 0;

	req = FUNC10(http_request_empty_done, data->base);

	/* Add the information that we care about */
	FUNC4(FUNC9(req), "Empty", "itis");

	/* We give ownership of the request to the connection */
	if (FUNC8(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
		FUNC17("Couldn't make request");
	}

	FUNC3(data->base);

 end:
	if (evcon)
		FUNC6(evcon);
	if (http)
		FUNC7(http);
	if (dns_base)
		FUNC0(dns_base, 0);
	FUNC15();
}