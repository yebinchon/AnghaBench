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
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *) ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC4(struct bufferevent *bev, void *arg)
{
	const char *what = "400 Bad Request";
	if (FUNC2(FUNC1(bev), what)) {
		test_ok = 2;
		FUNC0(bev, EV_READ);
		FUNC3(arg, NULL);
	}
}