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
 int BEV_TRIG_ALL_OPTS ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,short,int) ; 

void
FUNC3(struct bufferevent *bufev, short iotype, int options)
{
	FUNC1(bufev);
	FUNC2(bufev, iotype, options&BEV_TRIG_ALL_OPTS);
	FUNC0(bufev);
}