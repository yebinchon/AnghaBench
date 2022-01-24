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
struct timeval {int member_1; int /*<<< orphan*/  member_0; } ;
struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct evhttp {int /*<<< orphan*/  connections; } ;
struct basic_test_data {int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVHTTP_REQ_GET ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  close_detect_cb ; 
 struct evhttp_connection* delayed_client ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 struct evhttp_connection* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_connection*,struct timeval const*) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp*) ; 
 int FUNC7 (struct evhttp_connection*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC9 (int /*<<< orphan*/ ,struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC10 (struct evhttp*,struct timeval const*) ; 
 struct evhttp* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ test_ok ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct evhttp_connection*) ; 

__attribute__((used)) static void
FUNC14(struct basic_test_data *data, int with_delay)
{
	ev_uint16_t port = 0;
	struct evhttp_connection *evcon = NULL;
	struct evhttp_request *req = NULL;
	const struct timeval sec_tenth = { 0, 100000 };
	struct evhttp *http = FUNC11(&port, data->base, 0);

	test_ok = 0;

	/* .1 second timeout */
	FUNC10(http, &sec_tenth);

	evcon = FUNC3(data->base, NULL,
	    "127.0.0.1", port);
	FUNC13(evcon);
	FUNC5(evcon, &sec_tenth);


	FUNC13(evcon);
	delayed_client = evcon;

	/*
	 * At this point, we want to schedule a request to the HTTP
	 * server using our make request method.
	 */

	req = FUNC9(close_detect_cb, evcon);

	/* Add the information that we care about */
	FUNC2(FUNC8(req), "Host", "somehost");

	/* We give ownership of the request to the connection */
	if (FUNC7(evcon,
	    req, EVHTTP_REQ_GET, with_delay ? "/largedelay" : "/test") == -1) {
		FUNC12("couldn't make request");
	}

	FUNC1(data->base);

	/* at this point, the http server should have no connection */
	FUNC13(FUNC0(&http->connections) == NULL);

 end:
	if (evcon)
		FUNC4(evcon);
	if (http)
		FUNC6(http);
}