#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ low; } ;
struct TYPE_3__ {scalar_t__ low; } ;
struct bufferevent {TYPE_2__ wm_write; int /*<<< orphan*/  output; TYPE_1__ wm_read; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int BEV_TRIG_IGNORE_WATERMARKS ; 
 short EV_READ ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct bufferevent *bufev, short iotype, int options)
{
	if ((iotype & EV_READ) && ((options & BEV_TRIG_IGNORE_WATERMARKS) ||
	    FUNC2(bufev->input) >= bufev->wm_read.low))
		FUNC0(bufev, options);
	if ((iotype & EV_WRITE) && ((options & BEV_TRIG_IGNORE_WATERMARKS) ||
	    FUNC2(bufev->output) <= bufev->wm_write.low))
		FUNC1(bufev, options);
}