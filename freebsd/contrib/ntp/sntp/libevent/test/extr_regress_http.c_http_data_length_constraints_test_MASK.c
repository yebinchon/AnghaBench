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
 int /*<<< orphan*/  EVHTTP_REQ_POST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 struct evhttp_request* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_request*,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (struct evhttp_request*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 scalar_t__ http ; 
 int /*<<< orphan*/  http_data_length_constraints_test_done ; 
 int /*<<< orphan*/  http_large_entity_test_done ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char,int) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct evhttp_request*) ; 

__attribute__((used)) static void
FUNC17(void *arg)
{
	struct basic_test_data *data = arg;
	ev_uint16_t port = 0;
	struct evhttp_connection *evcon = NULL;
	struct evhttp_request *req = NULL;
	char long_str[8192];

	test_ok = 0;

	http = FUNC13(&port, data->base, 0);

	evcon = FUNC3(data->base, NULL, "127.0.0.1", port);
	FUNC16(evcon);

	/* also bind to local host */
	FUNC5(evcon, "127.0.0.1");

	/*
	 * At this point, we want to schedule an HTTP GET request
	 * server using our make request method.
	 */

	req = FUNC10(http_data_length_constraints_test_done, data->base);
	FUNC16(req);

	FUNC14(long_str, 'a', 8192);
	long_str[8191] = '\0';
	/* Add the information that we care about */
	FUNC12(http, 8191);
	FUNC2(FUNC9(req), "Host", "somehost");
	FUNC2(FUNC9(req), "Longheader", long_str);

	if (FUNC7(evcon, req, EVHTTP_REQ_GET, "/?arg=val") == -1) {
		FUNC15("Couldn't make request");
	}
	FUNC1(data->base);

	req = FUNC10(http_data_length_constraints_test_done, data->base);
	FUNC16(req);
	FUNC2(FUNC9(req), "Host", "somehost");

	/* GET /?arg=verylongvalue HTTP/1.1 */
	if (FUNC7(evcon, req, EVHTTP_REQ_GET, long_str) == -1) {
		FUNC15("Couldn't make request");
	}
	FUNC1(data->base);

	FUNC11(http, 8190);
	req = FUNC10(http_data_length_constraints_test_done, data->base);
	FUNC2(FUNC9(req), "Host", "somehost");
	FUNC0(FUNC8(req), "%s", long_str);
	if (FUNC7(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
		FUNC15("Couldn't make request");
	}
	FUNC1(data->base);

	req = FUNC10(http_large_entity_test_done, data->base);
	FUNC2(FUNC9(req), "Host", "somehost");
	FUNC2(FUNC9(req), "Expect", "100-continue");
	FUNC0(FUNC8(req), "%s", long_str);
	if (FUNC7(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
		FUNC15("Couldn't make request");
	}
	FUNC1(data->base);

	test_ok = 1;
 end:
	if (evcon)
		FUNC4(evcon);
	if (http)
		FUNC6(http);
}