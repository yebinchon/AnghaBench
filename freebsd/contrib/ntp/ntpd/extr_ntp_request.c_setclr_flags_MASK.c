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
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_int32 ;
struct req_pkt {int /*<<< orphan*/  u; int /*<<< orphan*/  err_nitems; } ;
struct conf_sys_flags {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  endpt ;

/* Variables and functions */
 int /*<<< orphan*/  INFO_ERR_FMT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFO_OKAY ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  PROTO_AUTHENTICATE ; 
 int /*<<< orphan*/  PROTO_BROADCLIENT ; 
 int /*<<< orphan*/  PROTO_CAL ; 
 int /*<<< orphan*/  PROTO_FILEGEN ; 
 int /*<<< orphan*/  PROTO_KERNEL ; 
 int /*<<< orphan*/  PROTO_MONITOR ; 
 int /*<<< orphan*/  PROTO_NTP ; 
 int /*<<< orphan*/  PROTO_PPS ; 
 int SYS_FLAG_AUTH ; 
 int SYS_FLAG_BCLIENT ; 
 int SYS_FLAG_CAL ; 
 int SYS_FLAG_FILEGEN ; 
 int SYS_FLAG_KERNEL ; 
 int SYS_FLAG_MONITOR ; 
 int SYS_FLAG_NTP ; 
 int SYS_FLAG_PPS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct req_pkt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(
	sockaddr_u *srcadr,
	endpt *inter,
	struct req_pkt *inpkt,
	u_long set
	)
{
	struct conf_sys_flags *sf;
	u_int32 flags;

	if (FUNC0(inpkt->err_nitems) > 1) {
		FUNC1(LOG_ERR, "setclr_flags: err_nitems > 1");
		FUNC4(srcadr, inter, inpkt, INFO_ERR_FMT);
		return;
	}

	sf = (struct conf_sys_flags *)&inpkt->u;
	flags = FUNC2(sf->flags);
	
	if (flags & ~(SYS_FLAG_BCLIENT | SYS_FLAG_PPS |
		      SYS_FLAG_NTP | SYS_FLAG_KERNEL | SYS_FLAG_MONITOR |
		      SYS_FLAG_FILEGEN | SYS_FLAG_AUTH | SYS_FLAG_CAL)) {
		FUNC1(LOG_ERR, "setclr_flags: extra flags: %#x",
			flags & ~(SYS_FLAG_BCLIENT | SYS_FLAG_PPS |
				  SYS_FLAG_NTP | SYS_FLAG_KERNEL |
				  SYS_FLAG_MONITOR | SYS_FLAG_FILEGEN |
				  SYS_FLAG_AUTH | SYS_FLAG_CAL));
		FUNC4(srcadr, inter, inpkt, INFO_ERR_FMT);
		return;
	}

	if (flags & SYS_FLAG_BCLIENT)
		FUNC3(PROTO_BROADCLIENT, set, 0., NULL);
	if (flags & SYS_FLAG_PPS)
		FUNC3(PROTO_PPS, set, 0., NULL);
	if (flags & SYS_FLAG_NTP)
		FUNC3(PROTO_NTP, set, 0., NULL);
	if (flags & SYS_FLAG_KERNEL)
		FUNC3(PROTO_KERNEL, set, 0., NULL);
	if (flags & SYS_FLAG_MONITOR)
		FUNC3(PROTO_MONITOR, set, 0., NULL);
	if (flags & SYS_FLAG_FILEGEN)
		FUNC3(PROTO_FILEGEN, set, 0., NULL);
	if (flags & SYS_FLAG_AUTH)
		FUNC3(PROTO_AUTHENTICATE, set, 0., NULL);
	if (flags & SYS_FLAG_CAL)
		FUNC3(PROTO_CAL, set, 0., NULL);
	FUNC4(srcadr, inter, inpkt, INFO_OKAY);
}