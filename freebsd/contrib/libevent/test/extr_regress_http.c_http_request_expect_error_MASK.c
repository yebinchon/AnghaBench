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
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC5(struct evhttp_request *req, void *arg)
{
	if (FUNC2(req) == HTTP_OK) {
		FUNC4(stderr, "FAILED\n");
		FUNC3(1);
	}

	test_ok = 1;
	FUNC0(arg);
	FUNC1(arg, NULL);
}