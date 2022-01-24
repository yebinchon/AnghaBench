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
struct nameserver {int /*<<< orphan*/  base; scalar_t__ choked; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 short EV_READ ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nameserver*) ; 
 int /*<<< orphan*/  FUNC4 (struct nameserver*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(evutil_socket_t fd, short events, void *arg) {
	struct nameserver *ns = (struct nameserver *) arg;
	(void)fd;

	FUNC0(ns->base);
	if (events & EV_WRITE) {
		ns->choked = 0;
		if (!FUNC2(ns->base)) {
			FUNC4(ns, 0);
		}
	}
	if (events & EV_READ) {
		FUNC3(ns);
	}
	FUNC1(ns->base);
}