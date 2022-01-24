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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u_int32 ;
struct req_pkt {int dummy; } ;
struct info_timer_stats {void* xmtcalls; void* overflows; void* timereset; void* alarms; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  endpt ;

/* Variables and functions */
 scalar_t__ alarm_overflow ; 
 scalar_t__ current_time ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct req_pkt*,int) ; 
 scalar_t__ timer_timereset ; 
 scalar_t__ timer_xmtcalls ; 

__attribute__((used)) static void
FUNC4(
	sockaddr_u *		srcadr,
	endpt *			inter,
	struct req_pkt *	inpkt
	)
{
	struct info_timer_stats *	ts;
	u_long				sincereset;

	ts = (struct info_timer_stats *)FUNC3(srcadr, inter,
						    inpkt, sizeof(*ts));

	sincereset = current_time - timer_timereset;
	ts->timereset = FUNC1((u_int32)sincereset);
	ts->alarms = ts->timereset;
	ts->overflows = FUNC1((u_int32)alarm_overflow);
	ts->xmtcalls = FUNC1((u_int32)timer_xmtcalls);

	(void) FUNC2();
	FUNC0();
}