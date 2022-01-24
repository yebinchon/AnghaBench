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
struct info_sys_stats {void* tsrounding; void* lamport; void* received; void* limitrejected; void* badauth; void* processed; void* badlength; void* unknownversion; void* newversionpkt; void* oldversionpkt; void* denied; void* timereset; void* timeup; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  endpt ;

/* Variables and functions */
 scalar_t__ current_time ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct req_pkt*,int) ; 
 scalar_t__ sys_badauth ; 
 scalar_t__ sys_badlength ; 
 scalar_t__ sys_declined ; 
 scalar_t__ sys_lamport ; 
 scalar_t__ sys_limitrejected ; 
 scalar_t__ sys_newversion ; 
 scalar_t__ sys_oldversion ; 
 scalar_t__ sys_processed ; 
 scalar_t__ sys_received ; 
 scalar_t__ sys_restricted ; 
 scalar_t__ sys_stattime ; 
 scalar_t__ sys_tsrounding ; 

__attribute__((used)) static void
FUNC4(
	sockaddr_u *srcadr,
	endpt *inter,
	struct req_pkt *inpkt
	)
{
	register struct info_sys_stats *ss;

	ss = (struct info_sys_stats *)FUNC3(srcadr, inter, inpkt,
		sizeof(struct info_sys_stats));
	ss->timeup = FUNC1((u_int32)current_time);
	ss->timereset = FUNC1((u_int32)(current_time - sys_stattime));
	ss->denied = FUNC1((u_int32)sys_restricted);
	ss->oldversionpkt = FUNC1((u_int32)sys_oldversion);
	ss->newversionpkt = FUNC1((u_int32)sys_newversion);
	ss->unknownversion = FUNC1((u_int32)sys_declined);
	ss->badlength = FUNC1((u_int32)sys_badlength);
	ss->processed = FUNC1((u_int32)sys_processed);
	ss->badauth = FUNC1((u_int32)sys_badauth);
	ss->limitrejected = FUNC1((u_int32)sys_limitrejected);
	ss->received = FUNC1((u_int32)sys_received);
	ss->lamport = FUNC1((u_int32)sys_lamport);
	ss->tsrounding = FUNC1((u_int32)sys_tsrounding);
	(void) FUNC2();
	FUNC0();
}