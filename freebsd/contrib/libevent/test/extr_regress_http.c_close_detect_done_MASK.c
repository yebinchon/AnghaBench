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
struct timeval {int tv_usec; } ;
struct evhttp_request {int dummy; } ;

/* Variables and functions */
 scalar_t__ HTTP_OK ; 
 int /*<<< orphan*/  FUNC0 (void*,struct timeval*) ; 
 scalar_t__ FUNC1 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct evhttp_request *req, void *arg)
{
	struct timeval tv;
	FUNC3(req);
	FUNC3(FUNC1(req) == HTTP_OK);

	test_ok = 1;

 end:
	FUNC2(&tv);
	tv.tv_usec = 150000;
	FUNC0(arg, &tv);
}