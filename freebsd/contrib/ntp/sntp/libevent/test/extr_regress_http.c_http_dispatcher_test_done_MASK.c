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

/* Variables and functions */
 scalar_t__ HTTP_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_request*) ; 
 scalar_t__ FUNC6 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char const*) ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC10(struct evhttp_request *req, void *arg)
{
	struct event_base *base = arg;
	const char *what = "DISPATCHER_TEST";

	if (FUNC6(req) != HTTP_OK) {
		FUNC8(stderr, "FAILED\n");
		FUNC7(1);
	}

	if (FUNC3(FUNC5(req), "Content-Type") == NULL) {
		FUNC8(stderr, "FAILED (content type)\n");
		FUNC7(1);
	}

	if (FUNC1(FUNC4(req)) != FUNC9(what)) {
		FUNC8(stderr, "FAILED (length %lu vs %lu)\n",
		    (unsigned long)FUNC1(FUNC4(req)), (unsigned long)FUNC9(what));
		FUNC7(1);
	}

	if (FUNC0(FUNC4(req), what) != 0) {
		FUNC8(stderr, "FAILED (data)\n");
		FUNC7(1);
	}

	test_ok = 1;
	FUNC2(base, NULL);
}