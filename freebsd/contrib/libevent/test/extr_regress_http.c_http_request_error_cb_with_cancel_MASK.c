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
typedef  enum evhttp_request_error { ____Placeholder_evhttp_request_error } evhttp_request_error ;

/* Variables and functions */
 int EVREQ_HTTP_REQUEST_CANCEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  exit_base ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC4(enum evhttp_request_error error, void *arg)
{
	if (error != EVREQ_HTTP_REQUEST_CANCEL) {
		FUNC3(stderr, "FAILED\n");
		FUNC2(1);
	}
	test_ok = 1;

	{
		struct timeval tv;
		FUNC1(&tv);
		tv.tv_sec = 0;
		tv.tv_usec = 500 * 1000;
		FUNC0(exit_base, &tv);
	}
}