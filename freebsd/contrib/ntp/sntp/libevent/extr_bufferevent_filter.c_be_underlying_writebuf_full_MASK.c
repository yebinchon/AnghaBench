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
struct bufferevent_filtered {struct bufferevent* underlying; } ;
struct TYPE_2__ {scalar_t__ high; } ;
struct bufferevent {TYPE_1__ wm_write; int /*<<< orphan*/  output; } ;
typedef  enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;

/* Variables and functions */
 int BEV_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct bufferevent_filtered *bevf,
    enum bufferevent_flush_mode state)
{
	struct bufferevent *u = bevf->underlying;
	return state == BEV_NORMAL &&
	    u->wm_write.high &&
	    FUNC0(u->output) >= u->wm_write.high;
}