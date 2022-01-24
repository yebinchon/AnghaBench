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
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_int32 ;
struct req_pkt {int dummy; } ;
struct info_io_stats {void* int_received; void* interrupts; void* notsent; void* sent; void* received; void* ignored; void* dropped; void* lowwater; void* fullrecvbufs; void* freerecvbufs; void* totalrecvbufs; void* timereset; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  endpt ;

/* Variables and functions */
 scalar_t__ current_time ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ handler_calls ; 
 scalar_t__ handler_pkts ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ io_timereset ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ packets_dropped ; 
 scalar_t__ packets_ignored ; 
 scalar_t__ packets_notsent ; 
 scalar_t__ packets_received ; 
 scalar_t__ packets_sent ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct req_pkt*,int) ; 
 scalar_t__ FUNC8 () ; 

__attribute__((used)) static void
FUNC9(
	sockaddr_u *srcadr,
	endpt *inter,
	struct req_pkt *inpkt
	)
{
	struct info_io_stats *io;

	io = (struct info_io_stats *)FUNC7(srcadr, inter, inpkt,
						 sizeof(struct info_io_stats));

	io->timereset = FUNC3((u_int32)(current_time - io_timereset));
	io->totalrecvbufs = FUNC4((u_short) FUNC8());
	io->freerecvbufs = FUNC4((u_short) FUNC1());
	io->fullrecvbufs = FUNC4((u_short) FUNC2());
	io->lowwater = FUNC4((u_short) FUNC5());
	io->dropped = FUNC3((u_int32)packets_dropped);
	io->ignored = FUNC3((u_int32)packets_ignored);
	io->received = FUNC3((u_int32)packets_received);
	io->sent = FUNC3((u_int32)packets_sent);
	io->notsent = FUNC3((u_int32)packets_notsent);
	io->interrupts = FUNC3((u_int32)handler_calls);
	io->int_received = FUNC3((u_int32)handler_pkts);

	(void) FUNC6();
	FUNC0();
}