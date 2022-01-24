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
struct basic_test_data {int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 scalar_t__ BASIC_REQUEST_BODY ; 
 int /*<<< orphan*/  EVHTTP_REQ_GET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct evhttp_connection* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_connection*,int /*<<< orphan*/  (*) (struct evhttp_connection*,int /*<<< orphan*/ *),void*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (struct evhttp_connection*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 struct evhttp_request* FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  exit_base ; 
 scalar_t__ http ; 
 int /*<<< orphan*/  http_request_done ; 
 int /*<<< orphan*/  FUNC7 (struct evhttp_connection*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ test_ok ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct evhttp_connection*) ; 

__attribute__((used)) static void
FUNC11(void *arg)
{
	struct basic_test_data *data = arg;
	ev_uint16_t port = 0;
	struct evhttp_connection *evcon = NULL;
	struct evhttp_request *req = NULL;

	test_ok = 0;
	exit_base = data->base;

	http = FUNC8(&port, data->base, 0);

	evcon = FUNC1(data->base, NULL, "127.0.0.1", port);
	FUNC10(evcon);
	FUNC3(evcon, http_request_get_addr_on_close, arg);

	/*
	 * At this point, we want to schedule a request to the HTTP
	 * server using our make request method.
	 */

	req = FUNC6(http_request_done, (void *)BASIC_REQUEST_BODY);

	/* We give ownership of the request to the connection */
	if (FUNC5(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
		FUNC9("Couldn't make request");
	}

	FUNC0(data->base);

	FUNC7(evcon, NULL);

 end:
	if (evcon)
		FUNC2(evcon);
	if (http)
		FUNC4(http);
}