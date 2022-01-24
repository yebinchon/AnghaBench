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
typedef  struct evhttp_request evhttp_connection ;
struct basic_test_data {int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVHTTP_REQ_GET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct evhttp_request* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_request*,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (struct evhttp_request*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ http ; 
 int /*<<< orphan*/  http_dispatcher_test_done ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ test_ok ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct evhttp_request*) ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
	struct basic_test_data *data = arg;
	ev_uint16_t port = 0;
	struct evhttp_connection *evcon = NULL;
	struct evhttp_request *req = NULL;

	test_ok = 0;

	http = FUNC9(&port, data->base, 0);

	evcon = FUNC2(data->base, NULL, "127.0.0.1", port);
	FUNC11(evcon);

	/* also bind to local host */
	FUNC4(evcon, "127.0.0.1");

	/*
	 * At this point, we want to schedule an HTTP GET request
	 * server using our make request method.
	 */

	req = FUNC8(http_dispatcher_test_done, data->base);
	FUNC11(req);

	/* Add the information that we care about */
	FUNC1(FUNC7(req), "Host", "somehost");

	if (FUNC6(evcon, req, EVHTTP_REQ_GET, "/?arg=val") == -1) {
		FUNC10("Couldn't make request");
	}

	FUNC0(data->base);

 end:
	if (evcon)
		FUNC3(evcon);
	if (http)
		FUNC5(http);
}