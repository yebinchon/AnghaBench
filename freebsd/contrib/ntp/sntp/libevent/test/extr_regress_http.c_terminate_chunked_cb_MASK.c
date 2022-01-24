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
struct terminate_state {int /*<<< orphan*/  base; struct evhttp_request* req; } ;
struct evhttp_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_TIMEOUT ; 
 int /*<<< orphan*/  HTTP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  terminate_chunked_close_cb ; 
 int /*<<< orphan*/  terminate_chunked_trickle_cb ; 

__attribute__((used)) static void
FUNC4(struct evhttp_request *req, void *arg)
{
	struct terminate_state *state = arg;
	struct timeval tv;

	/* we want to know if this connection closes on us */
	FUNC1(
		FUNC2(req),
		terminate_chunked_close_cb, arg);

	state->req = req;

	FUNC3(req, HTTP_OK, "OK");

	tv.tv_sec = 0;
	tv.tv_usec = 3000;
	FUNC0(state->base, -1, EV_TIMEOUT, terminate_chunked_trickle_cb, arg, &tv);
}