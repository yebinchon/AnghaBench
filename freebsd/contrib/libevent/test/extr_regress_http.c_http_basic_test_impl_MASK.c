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
struct timeval {int tv_usec; } ;
struct evhttp {int dummy; } ;
struct bufferevent {int dummy; } ;
struct basic_test_data {int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EV_TIMEOUT ; 
 int HTTP_BIND_SSL ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,char const*,int /*<<< orphan*/ ) ; 
 struct bufferevent* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  exit_base ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (struct evhttp*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  http_complete_write ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  http_errorcb ; 
 int /*<<< orphan*/  http_readcb ; 
 struct evhttp* FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  http_writecb ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static void
FUNC16(void *arg, int ssl)
{
	struct basic_test_data *data = arg;
	struct timeval tv;
	struct bufferevent *bev = NULL;
	evutil_socket_t fd;
	const char *http_request;
	ev_uint16_t port = 0, port2 = 0;
	int server_flags = ssl ? HTTP_BIND_SSL : 0;
	struct evhttp *http = FUNC13(&port, data->base, server_flags);

	exit_base = data->base;
	test_ok = 0;

	/* bind to a second socket */
	if (FUNC11(http, &port2, server_flags) == -1) {
		FUNC10(stdout, "FAILED (bind)\n");
		FUNC9(1);
	}

	fd = FUNC12("127.0.0.1", port);

	/* Stupid thing to send a request */
	bev = FUNC3(data->base, fd, ssl);
	FUNC1(bev, http_readcb, http_writecb,
	    http_errorcb, data->base);

	/* first half of the http request */
	http_request =
	    "GET /test HTTP/1.1\r\n"
	    "Host: some";

	FUNC2(bev, http_request, FUNC14(http_request));
	FUNC8(&tv);
	tv.tv_usec = 100000;
	FUNC5(data->base,
	    -1, EV_TIMEOUT, http_complete_write, bev, &tv);

	FUNC4(data->base);

	FUNC15(test_ok == 3);

	/* connect to the second port */
	FUNC0(bev);
	FUNC7(fd);

	fd = FUNC12("127.0.0.1", port2);

	/* Stupid thing to send a request */
	bev = FUNC3(data->base, fd, ssl);
	FUNC1(bev, http_readcb, http_writecb,
	    http_errorcb, data->base);

	http_request =
	    "GET /test HTTP/1.1\r\n"
	    "Host: somehost\r\n"
	    "Connection: close\r\n"
	    "\r\n";

	FUNC2(bev, http_request, FUNC14(http_request));

	FUNC4(data->base);

	FUNC15(test_ok == 5);

	/* Connect to the second port again. This time, send an absolute uri. */
	FUNC0(bev);
	FUNC7(fd);

	fd = FUNC12("127.0.0.1", port2);

	/* Stupid thing to send a request */
	bev = FUNC3(data->base, fd, ssl);
	FUNC1(bev, http_readcb, http_writecb,
	    http_errorcb, data->base);

	http_request =
	    "GET http://somehost.net/test HTTP/1.1\r\n"
	    "Host: somehost\r\n"
	    "Connection: close\r\n"
	    "\r\n";

	FUNC2(bev, http_request, FUNC14(http_request));

	FUNC4(data->base);

	FUNC15(test_ok == 7);

	FUNC6(http);
 end:
	if (bev)
		FUNC0(bev);
}