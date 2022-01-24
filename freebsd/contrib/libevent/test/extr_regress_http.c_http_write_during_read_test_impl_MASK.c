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
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EV_TIMEOUT ; 
 int /*<<< orphan*/  HTTP_BIND_SSL ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,char const*,int /*<<< orphan*/ ) ; 
 struct bufferevent* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bufferevent*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC7 (struct evhttp*) ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*) ; 
 int /*<<< orphan*/  exit_base ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 struct evhttp* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  http_write_during_read ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 scalar_t__ test_ok ; 

__attribute__((used)) static void
FUNC12(void *arg, int ssl)
{
	struct basic_test_data *data = arg;
	ev_uint16_t port = 0;
	struct bufferevent *bev = NULL;
	struct timeval tv;
	int fd;
	const char *http_request;
	struct evhttp *http = FUNC10(&port, data->base, ssl ? HTTP_BIND_SSL : 0);

	test_ok = 0;
	exit_base = data->base;

	fd = FUNC9("127.0.0.1", port);
	bev = FUNC4(data->base, fd, 0);
	FUNC2(bev, NULL, NULL, NULL, data->base);
	FUNC0(bev, EV_READ);

	http_request =
	    "GET /large HTTP/1.1\r\n"
	    "Host: somehost\r\n"
	    "\r\n";

	FUNC3(bev, http_request, FUNC11(http_request));
	FUNC8(&tv);
	tv.tv_usec = 10000;
	FUNC6(data->base, -1, EV_TIMEOUT, http_write_during_read, bev, &tv);

	FUNC5(data->base);

	if (bev)
		FUNC1(bev);
	if (http)
		FUNC7(http);
}