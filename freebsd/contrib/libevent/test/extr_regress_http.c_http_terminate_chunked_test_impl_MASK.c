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
typedef  int /*<<< orphan*/  terminate_state ;
struct timeval {int tv_usec; } ;
struct terminate_state {scalar_t__ gotclosecb; int oneshot; struct bufferevent* bev; scalar_t__ fd; int /*<<< orphan*/  base; } ;
struct evhttp {int dummy; } ;
struct bufferevent {int dummy; } ;
struct basic_test_data {int /*<<< orphan*/  base; } ;
typedef  scalar_t__ evutil_socket_t ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EV_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bufferevent* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct terminate_state*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp*) ; 
 scalar_t__ FUNC7 (struct evhttp*,char*,int /*<<< orphan*/ ,struct terminate_state*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  http_errorcb ; 
 struct evhttp* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  http_writecb ; 
 int /*<<< orphan*/  FUNC12 (struct terminate_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  terminate_chunked_cb ; 
 int /*<<< orphan*/  terminate_chunked_client ; 
 int /*<<< orphan*/  terminate_readcb ; 
 scalar_t__ test_ok ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void
FUNC15(void *arg, int oneshot)
{
	struct basic_test_data *data = arg;
	struct bufferevent *bev = NULL;
	struct timeval tv;
	const char *http_request;
	ev_uint16_t port = 0;
	evutil_socket_t fd = -1;
	struct terminate_state terminate_state;
	struct evhttp *http = FUNC11(&port, data->base, 0);

	test_ok = 0;

	FUNC5(http, "/test");
	FUNC14(FUNC7(http, "/test",
		terminate_chunked_cb, &terminate_state) == 0);

	fd = FUNC10("127.0.0.1", port);

	/* Stupid thing to send a request */
	bev = FUNC1(data->base, fd, 0);
	FUNC0(bev, terminate_readcb, http_writecb,
	    http_errorcb, data->base);

	FUNC12(&terminate_state, 0, sizeof(terminate_state));
	terminate_state.base = data->base;
	terminate_state.fd = fd;
	terminate_state.bev = bev;
	terminate_state.gotclosecb = 0;
	terminate_state.oneshot = oneshot;

	/* first half of the http request */
	http_request =
	    "GET /test HTTP/1.1\r\n"
	    "Host: some\r\n\r\n";

	FUNC2(bev, http_request, FUNC13(http_request));
	FUNC9(&tv);
	tv.tv_usec = 10000;
	FUNC4(data->base, -1, EV_TIMEOUT, terminate_chunked_client, &terminate_state,
	    &tv);

	FUNC3(data->base);

	if (terminate_state.gotclosecb == 0)
		test_ok = 0;

 end:
	if (fd >= 0)
		FUNC8(fd);
	if (http)
		FUNC6(http);
}