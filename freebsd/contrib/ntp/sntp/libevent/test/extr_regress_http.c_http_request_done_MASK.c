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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HTTP_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_request*) ; 
 scalar_t__ FUNC7 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  exit_base ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC10 (char const*) ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC11(struct evhttp_request *req, void *arg)
{
	const char *what = arg;

	if (FUNC7(req) != HTTP_OK) {
		FUNC9(stderr, "FAILED\n");
		FUNC8(1);
	}

	if (FUNC4(FUNC6(req), "Content-Type") == NULL) {
		FUNC9(stderr, "FAILED\n");
		FUNC8(1);
	}

	if (FUNC2(FUNC5(req)) != FUNC10(what)) {
		FUNC9(stderr, "FAILED\n");
		FUNC8(1);
	}

	if (FUNC1(FUNC5(req), what) != 0) {
		FUNC9(stderr, "FAILED\n");
		FUNC8(1);
	}

	test_ok = 1;
	FUNC0(exit_base);
	FUNC3(exit_base, NULL);
}