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
struct terminate_state {struct terminate_state* base; int /*<<< orphan*/  req; } ;
struct evbuffer {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct terminate_state*) ; 
 int /*<<< orphan*/  EV_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,char*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*) ; 
 struct evbuffer* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct terminate_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct terminate_state*,int,int /*<<< orphan*/ ,void (*) (int /*<<< orphan*/ ,short,void*),void*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct evbuffer*) ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC9(evutil_socket_t fd, short events, void *arg)
{
	struct terminate_state *state = arg;
	struct evbuffer *evb;
	struct timeval tv;

	if (FUNC7(state->req) == NULL) {
		test_ok = 1;
		FUNC6(state->req);
		FUNC4(state->base,NULL);
		return;
	}

	evb = FUNC3();
	FUNC1(evb, "%p", evb);
	FUNC8(state->req, evb);
	FUNC2(evb);

	tv.tv_sec = 0;
	tv.tv_usec = 3000;
	FUNC0(state);
	FUNC0(state->base);
	FUNC5(state->base, -1, EV_TIMEOUT, terminate_chunked_trickle_cb, arg, &tv);
}