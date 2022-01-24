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
struct evhttp {int dummy; } ;
struct basic_test_data {int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVHTTP_CON_READ_ON_WRITE_ERROR ; 
 int /*<<< orphan*/  EVHTTP_REQ_GET ; 
 int /*<<< orphan*/  EVHTTP_REQ_POST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 struct evhttp_request* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_request*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct evhttp*) ; 
 int FUNC8 (struct evhttp_request*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC11 (void (*) (struct evhttp_request*,void*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct evhttp*,size_t const) ; 
 int /*<<< orphan*/  FUNC13 (struct evhttp*,size_t const) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 void FUNC15 (struct evhttp_request*,void*) ; 
 void FUNC16 (struct evhttp_request*,void*) ; 
 void FUNC17 (struct evhttp_request*,void*) ; 
 void FUNC18 (struct evhttp_request*,void*) ; 
 void FUNC19 (struct evhttp_request*,void*) ; 
 struct evhttp* FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC21 (size_t const) ; 
 int /*<<< orphan*/  FUNC22 (char*,char,size_t const) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 

__attribute__((used)) static void
FUNC25(void *arg, int read_on_write_error)
{
	struct basic_test_data *data = arg;
	ev_uint16_t port = 0;
	struct evhttp_connection *evcon = NULL;
	struct evhttp_request *req = NULL;
	char *long_str = NULL;
	const size_t continue_size = 1<<20;
	const size_t size = (1<<20) * 3;
	void (*cb)(struct evhttp_request *, void *);
	struct evhttp *http = FUNC20(&port, data->base, 0);

	test_ok = 0;
	cb = http_failed_request_done;
#ifndef WIN32
	if (read_on_write_error)
		cb = http_data_length_constraints_test_done;
#endif

	FUNC24(continue_size < size);

	evcon = FUNC3(data->base, NULL, "127.0.0.1", port);
	FUNC24(evcon);

	if (read_on_write_error)
		FUNC24(!FUNC5(evcon, EVHTTP_CON_READ_ON_WRITE_ERROR));

	/* also bind to local host */
	FUNC6(evcon, "127.0.0.1");

	/*
	 * At this point, we want to schedule an HTTP GET request
	 * server using our make request method.
	 */

	req = FUNC11(http_data_length_constraints_test_done, data->base);
	FUNC24(req);

	long_str = FUNC21(size);
	FUNC22(long_str, 'a', size);
	long_str[size - 1] = '\0';
	/* Add the information that we care about */
	FUNC13(http, size - 1);
	FUNC2(FUNC10(req), "Host", "somehost");
	FUNC2(FUNC10(req), "Longheader", long_str);

	if (FUNC8(evcon, req, EVHTTP_REQ_GET, "/?arg=val") == -1) {
		FUNC23("Couldn't make request");
	}
	FUNC1(data->base);

	req = FUNC11(http_data_length_constraints_test_done, data->base);
	FUNC24(req);
	FUNC2(FUNC10(req), "Host", "somehost");

	/* GET /?arg=verylongvalue HTTP/1.1 */
	if (FUNC8(evcon, req, EVHTTP_REQ_GET, long_str) == -1) {
		FUNC23("Couldn't make request");
	}
	FUNC1(data->base);

#ifndef WIN32
	if (read_on_write_error)
		cb = http_large_entity_test_done;
#endif
	FUNC12(http, size - 2);
	req = FUNC11(cb, data->base);
	FUNC2(FUNC10(req), "Host", "somehost");
	FUNC0(FUNC9(req), "%s", long_str);
	if (FUNC8(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
		FUNC23("Couldn't make request");
	}
	FUNC1(data->base);

	req = FUNC11(http_large_entity_test_done, data->base);
	FUNC2(FUNC10(req), "Host", "somehost");
	FUNC2(FUNC10(req), "Expect", "100-continue");
	FUNC0(FUNC9(req), "%s", long_str);
	if (FUNC8(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
		FUNC23("Couldn't make request");
	}
	FUNC1(data->base);

	req = FUNC11(http_dispatcher_test_done, data->base);
	FUNC2(FUNC10(req), "Host", "somehost");
	FUNC2(FUNC10(req), "Expect", "100-continue");
	long_str[continue_size] = '\0';
	FUNC0(FUNC9(req), "%s", long_str);
	if (FUNC8(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
		FUNC23("Couldn't make request");
	}
	FUNC1(data->base);

#ifndef WIN32
	if (read_on_write_error)
		cb = http_expectation_failed_done;
#endif
	req = FUNC11(cb, data->base);
	FUNC2(FUNC10(req), "Host", "somehost");
	FUNC2(FUNC10(req), "Expect", "101-continue");
	FUNC0(FUNC9(req), "%s", long_str);
	if (FUNC8(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
		FUNC23("Couldn't make request");
	}
	FUNC1(data->base);

	test_ok = 1;
 end:
	if (evcon)
		FUNC4(evcon);
	if (http)
		FUNC7(http);
	if (long_str)
		FUNC14(long_str);
}