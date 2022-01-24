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
struct bufferevent_private {int /*<<< orphan*/  refcnt; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC1 (struct bufferevent*) ; 

void
FUNC2(struct bufferevent *bufev)
{
	struct bufferevent_private *bufev_private =
	    FUNC1(bufev);
	FUNC0(bufev);
	++bufev_private->refcnt;
}