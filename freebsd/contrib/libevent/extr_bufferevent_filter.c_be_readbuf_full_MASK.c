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
struct bufferevent_filtered {int dummy; } ;
struct TYPE_2__ {scalar_t__ high; } ;
struct bufferevent {TYPE_1__ wm_read; int /*<<< orphan*/  input; } ;
typedef  enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;

/* Variables and functions */
 int BEV_NORMAL ; 
 struct bufferevent* FUNC0 (struct bufferevent_filtered*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct bufferevent_filtered *bevf,
    enum bufferevent_flush_mode state)
{
	struct bufferevent *bufev = FUNC0(bevf);
	return state == BEV_NORMAL &&
	    bufev->wm_read.high &&
	    FUNC1(bufev->input) >= bufev->wm_read.high;
}