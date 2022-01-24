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
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct evhttp_request {int dummy; } ;
struct event_base {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (struct evhttp_request*) ; 
 struct event_base* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*) ; 
 int /*<<< orphan*/  test_ok ; 

__attribute__((used)) static void
FUNC5(evutil_socket_t fd, short what, void *arg)
{
	struct evhttp_request *req = arg;
	struct timeval tv;
	struct event_base *base;
	FUNC4(&tv);
	tv.tv_sec = 0;
	tv.tv_usec = 500 * 1000;

	base = FUNC2(FUNC3(req));
	FUNC1(req);

	FUNC0(base, &tv);

	++test_ok;
}