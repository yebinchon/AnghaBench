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
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  SHUT_WR ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_ok ; 

__attribute__((used)) static void
FUNC4(struct bufferevent *bev, void *arg)
{
	if (arg != NULL) {
		evutil_socket_t fd = *(evutil_socket_t *)arg;
		/* terminate the write side to simulate EOF */
		FUNC3(fd, SHUT_WR);
	}
	if (FUNC2(FUNC1(bev)) == 0) {
		/* enable reading of the reply */
		FUNC0(bev, EV_READ);
		test_ok++;
	}
}