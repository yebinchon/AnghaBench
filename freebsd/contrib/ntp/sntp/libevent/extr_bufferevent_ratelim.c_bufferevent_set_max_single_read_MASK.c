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
struct bufferevent_private {size_t max_single_read; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent*) ; 
 size_t EV_SSIZE_MAX ; 
 size_t MAX_SINGLE_READ_DEFAULT ; 

int
FUNC3(struct bufferevent *bev, size_t size)
{
	struct bufferevent_private *bevp;
	FUNC0(bev);
	bevp = FUNC2(bev);
	if (size == 0 || size > EV_SSIZE_MAX)
		bevp->max_single_read = MAX_SINGLE_READ_DEFAULT;
	else
		bevp->max_single_read = size;
	FUNC1(bev);
	return 0;
}