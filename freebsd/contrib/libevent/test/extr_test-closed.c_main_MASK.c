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
struct event_config {int dummy; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  EVUTIL_SHUT_WR ; 
 int EV_CLOSED ; 
 int /*<<< orphan*/  EV_FEATURE_EARLY_CLOSE ; 
 int EV_TIMEOUT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  closed_cb ; 
 int /*<<< orphan*/  FUNC0 (struct event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*) ; 
 struct event_base* FUNC3 (struct event_config*) ; 
 int /*<<< orphan*/  FUNC4 (struct event_config*) ; 
 struct event_config* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct event_config*,int /*<<< orphan*/ ) ; 
 struct event* FUNC7 (struct event_base*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const*) ; 
 int /*<<< orphan*/  timeout ; 

int
FUNC13(int argc, char **argv)
{
	struct event_base *base;
	struct event_config *cfg;
	struct event *ev;
	const char *test = "test string";
	evutil_socket_t pair[2];

	/* Initialize the library and check if the backend
	   supports EV_FEATURE_EARLY_CLOSE
	*/
	cfg = FUNC5();
	FUNC6(cfg, EV_FEATURE_EARLY_CLOSE);
	base = FUNC3(cfg);
	FUNC4(cfg);
	if (!base) {
		/* Backend doesn't support EV_FEATURE_EARLY_CLOSE */
		return 0;
	}

	/* Create a pair of sockets */
	if (FUNC9(AF_UNIX, SOCK_STREAM, 0, pair) == -1)
		return (1);

	/* Send some data on socket 0 and immediately close it */
	if (FUNC10(pair[0], test, (int)FUNC12(test)+1, 0) < 0)
		return (1);
	FUNC11(pair[0], EVUTIL_SHUT_WR);

	/* Dispatch */
	ev = FUNC7(base, pair[1], EV_CLOSED | EV_TIMEOUT, closed_cb, FUNC8());
	FUNC0(ev, &timeout);
	FUNC1(base);

	/* Finalize library */
	FUNC2(base);
	return 0;
}