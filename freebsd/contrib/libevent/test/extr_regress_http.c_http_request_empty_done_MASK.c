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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ HTTP_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_request*) ; 
 scalar_t__ FUNC6 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC10(struct evhttp_request *req, void *arg)
{
	if (!req) {
		FUNC8(stderr, "FAILED\n");
		FUNC7(1);
	}

	if (FUNC6(req) != HTTP_OK) {
		FUNC8(stderr, "FAILED\n");
		FUNC7(1);
	}

	if (FUNC3(FUNC5(req), "Date") == NULL) {
		FUNC8(stderr, "FAILED\n");
		FUNC7(1);
	}


	if (FUNC3(FUNC5(req), "Content-Length") == NULL) {
		FUNC8(stderr, "FAILED\n");
		FUNC7(1);
	}

	if (FUNC9(FUNC3(FUNC5(req), "Content-Length"),
		"0")) {
		FUNC8(stderr, "FAILED\n");
		FUNC7(1);
	}

	if (FUNC1(FUNC4(req)) != 0) {
		FUNC8(stderr, "FAILED\n");
		FUNC7(1);
	}

	test_ok = 1;
	FUNC0(arg);
	FUNC2(arg, NULL);
}