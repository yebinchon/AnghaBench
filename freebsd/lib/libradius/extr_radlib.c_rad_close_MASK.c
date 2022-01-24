#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rad_handle {int fd; int num_servers; TYPE_1__* servers; } ;
struct TYPE_2__ {struct rad_handle* secret; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rad_handle*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rad_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct rad_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rad_handle*) ; 

void
FUNC5(struct rad_handle *h)
{
	int srv;

	if (h->fd != -1)
		FUNC1(h->fd);
	for (srv = 0;  srv < h->num_servers;  srv++) {
		FUNC3(h->servers[srv].secret, 0,
		    FUNC4(h->servers[srv].secret));
		FUNC2(h->servers[srv].secret);
	}
	FUNC0(h);
	FUNC2(h);
}