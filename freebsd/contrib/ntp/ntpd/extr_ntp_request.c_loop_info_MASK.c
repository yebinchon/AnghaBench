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
typedef  int /*<<< orphan*/  u_int32 ;
struct req_pkt {int dummy; } ;
struct info_loop {void* watchdog_timer; void* compliance; int /*<<< orphan*/  drift_comp; int /*<<< orphan*/  last_offset; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  l_fp ;
typedef  int /*<<< orphan*/  endpt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ current_time ; 
 int drift_comp ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int last_offset ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct req_pkt*,int) ; 
 scalar_t__ sys_epoch ; 
 scalar_t__ tc_counter ; 

__attribute__((used)) static void
FUNC6(
	sockaddr_u *srcadr,
	endpt *inter,
	struct req_pkt *inpkt
	)
{
	struct info_loop *li;
	l_fp ltmp;

	li = (struct info_loop *)FUNC5(srcadr, inter, inpkt,
	    sizeof(struct info_loop));

	FUNC0(last_offset, &ltmp);
	FUNC1(&ltmp, &li->last_offset);
	FUNC0(drift_comp * 1e6, &ltmp);
	FUNC1(&ltmp, &li->drift_comp);
	li->compliance = FUNC3((u_int32)(tc_counter));
	li->watchdog_timer = FUNC3((u_int32)(current_time - sys_epoch));

	(void) FUNC4();
	FUNC2();
}