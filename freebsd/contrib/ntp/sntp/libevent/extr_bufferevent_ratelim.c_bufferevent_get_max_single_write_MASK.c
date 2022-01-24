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
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  ev_ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  max_single_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 TYPE_1__* FUNC2 (struct bufferevent*) ; 

ev_ssize_t
FUNC3(struct bufferevent *bev)
{
	ev_ssize_t r;

	FUNC0(bev);
	r = FUNC2(bev)->max_single_write;
	FUNC1(bev);
	return r;
}