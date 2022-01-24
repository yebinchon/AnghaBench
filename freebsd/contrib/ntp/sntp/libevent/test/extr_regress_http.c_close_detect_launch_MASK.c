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
struct event_base {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVHTTP_REQ_GET ; 
 int /*<<< orphan*/  close_detect_done ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 struct event_base* FUNC1 (struct evhttp_connection*) ; 
 int FUNC2 (struct evhttp_connection*,struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC4 (int /*<<< orphan*/ ,struct event_base*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(evutil_socket_t fd, short what, void *arg)
{
	struct evhttp_connection *evcon = arg;
	struct event_base *base = FUNC1(evcon);
	struct evhttp_request *req;

	req = FUNC4(close_detect_done, base);

	/* Add the information that we care about */
	FUNC0(FUNC3(req), "Host", "somehost");

	/* We give ownership of the request to the connection */
	if (FUNC2(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
		FUNC5("Couldn't make request");
	}
}