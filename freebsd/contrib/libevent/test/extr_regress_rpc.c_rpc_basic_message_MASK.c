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
struct msg {int dummy; } ;
struct evrpc_base {int dummy; } ;
struct evhttp_request {int /*<<< orphan*/  output_buffer; int /*<<< orphan*/  output_headers; } ;
struct evhttp_connection {int dummy; } ;
struct evhttp {int dummy; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVHTTP_REQ_POST ; 
 int /*<<< orphan*/  FUNC0 (struct msg*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_connection*) ; 
 struct evhttp_connection* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp*) ; 
 int FUNC6 (struct evhttp_connection*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 struct evhttp_request* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  from_name ; 
 int /*<<< orphan*/  FUNC10 (struct msg*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct msg*) ; 
 struct msg* FUNC12 () ; 
 int /*<<< orphan*/  rpc_postrequest_done ; 
 int /*<<< orphan*/  FUNC13 (struct evhttp**,int /*<<< orphan*/ *,struct evrpc_base**) ; 
 int /*<<< orphan*/  FUNC14 (struct evrpc_base*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ test_ok ; 
 int /*<<< orphan*/  to_name ; 
 int /*<<< orphan*/  FUNC15 (struct evhttp_connection*) ; 

__attribute__((used)) static void
FUNC16(void)
{
	ev_uint16_t port;
	struct evhttp *http = NULL;
	struct evrpc_base *base = NULL;
	struct evhttp_connection *evcon = NULL;
	struct evhttp_request *req = NULL;
	struct msg *msg;

	FUNC13(&http, &port, &base);

	evcon = FUNC4("127.0.0.1", port);
	FUNC15(evcon);

	/*
	 * At this point, we want to schedule an HTTP POST request
	 * server using our make request method.
	 */

	req = FUNC7(rpc_postrequest_done, NULL);
	if (req == NULL) {
		FUNC9(stdout, "FAILED\n");
		FUNC8(1);
	}

	/* Add the information that we care about */
	FUNC2(req->output_headers, "Host", "somehost");

	/* set up the basic message */
	msg = FUNC12();
	FUNC0(msg, from_name, "niels");
	FUNC0(msg, to_name, "tester");
	FUNC11(req->output_buffer, msg);
	FUNC10(msg);

	if (FUNC6(evcon, req,
		EVHTTP_REQ_POST,
		"/.rpc.Message") == -1) {
		FUNC9(stdout, "FAILED\n");
		FUNC8(1);
	}

	test_ok = 0;

	FUNC1();

	FUNC3(evcon);

	FUNC14(base);

end:
	FUNC5(http);
}