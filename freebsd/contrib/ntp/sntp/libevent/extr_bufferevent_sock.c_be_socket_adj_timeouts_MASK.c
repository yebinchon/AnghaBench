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
struct bufferevent {int /*<<< orphan*/  ev_write; int /*<<< orphan*/  timeout_write; int /*<<< orphan*/  ev_read; int /*<<< orphan*/  timeout_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EV_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct bufferevent *bufev)
{
	int r = 0;
	if (FUNC1(&bufev->ev_read, EV_READ, NULL)) {
		if (FUNC3(&bufev->timeout_read)) {
			    if (FUNC0(&bufev->ev_read, &bufev->timeout_read) < 0)
				    r = -1;
		} else {
			FUNC2(&bufev->ev_read);
		}
	}
	if (FUNC1(&bufev->ev_write, EV_WRITE, NULL)) {
		if (FUNC3(&bufev->timeout_write)) {
			if (FUNC0(&bufev->ev_write, &bufev->timeout_write) < 0)
				r = -1;
		} else {
			FUNC2(&bufev->ev_write);
		}
	}
	return r;
}