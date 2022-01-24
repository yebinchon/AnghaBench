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
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
struct evconnlistener {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int LEV_OPT_CLOSE_ON_FREE ; 
 int LEV_OPT_REUSEABLE ; 
 int /*<<< orphan*/  PORT ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct evconnlistener*) ; 
 struct evconnlistener* FUNC2 (struct event_base*,int /*<<< orphan*/ ,void*,int,int,struct sockaddr*,int) ; 
 scalar_t__ FUNC3 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC5 (struct event_base*) ; 
 struct event_base* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct event*) ; 
 struct event* FUNC8 (struct event_base*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  listener_cb ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  signal_cb ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC13(int argc, char **argv)
{
	struct event_base *base;
	struct evconnlistener *listener;
	struct event *signal_event;

	struct sockaddr_in sin;
#ifdef _WIN32
	WSADATA wsa_data;
	WSAStartup(0x0201, &wsa_data);
#endif

	base = FUNC6();
	if (!base) {
		FUNC9(stderr, "Could not initialize libevent!\n");
		return 1;
	}

	FUNC11(&sin, 0, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_port = FUNC10(PORT);

	listener = FUNC2(base, listener_cb, (void *)base,
	    LEV_OPT_REUSEABLE|LEV_OPT_CLOSE_ON_FREE, -1,
	    (struct sockaddr*)&sin,
	    sizeof(sin));

	if (!listener) {
		FUNC9(stderr, "Could not create a listener!\n");
		return 1;
	}

	signal_event = FUNC8(base, SIGINT, signal_cb, (void *)base);

	if (!signal_event || FUNC3(signal_event, NULL)<0) {
		FUNC9(stderr, "Could not create/add a signal event!\n");
		return 1;
	}

	FUNC4(base);

	FUNC1(listener);
	FUNC7(signal_event);
	FUNC5(base);

	FUNC12("done\n");
	return 0;
}