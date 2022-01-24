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
struct event_base {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef  enum message_read_status { ____Placeholder_message_read_status } message_read_status ;

/* Variables and functions */
 int ALL_DATA_READ ; 
 char* BASIC_REQUEST_BODY ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct event_base*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct evhttp_request*) ; 
 struct evhttp_request* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 struct event_base* exit_base ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  test_ok ; 

__attribute__((used)) static void
FUNC12(struct bufferevent *bev, void *arg)
{
	const char *what = BASIC_REQUEST_BODY;
	struct event_base *my_base = arg;

	if (FUNC2(FUNC1(bev), what)) {
		struct evhttp_request *req = FUNC9(NULL, NULL);
		enum message_read_status done;

		/* req->kind = EVHTTP_RESPONSE; */
		done = FUNC5(req, FUNC1(bev));
		if (done != ALL_DATA_READ)
			goto out;

		done = FUNC6(req, FUNC1(bev));
		if (done != ALL_DATA_READ)
			goto out;

		if (done == 1 &&
		    FUNC4(FUNC8(req),
			"Content-Type") != NULL)
			test_ok++;

	 out:
		FUNC7(req);
		FUNC0(bev, EV_READ);
		if (exit_base)
			FUNC3(exit_base, NULL);
		else if (my_base)
			FUNC3(my_base, NULL);
		else {
			FUNC11(stderr, "No way to exit loop!\n");
			FUNC10(1);
		}
	}
}