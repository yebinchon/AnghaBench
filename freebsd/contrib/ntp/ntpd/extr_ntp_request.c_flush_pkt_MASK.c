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
typedef  int /*<<< orphan*/  u_short ;
struct req_pkt {int dummy; } ;
struct pkt {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  err_nitems; int /*<<< orphan*/  auth_seq; int /*<<< orphan*/  rm_vn_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  INFO_ERR_NODATA ; 
 int /*<<< orphan*/  RESP_BIT ; 
 scalar_t__ RESP_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ databytes ; 
 int /*<<< orphan*/  frominter ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ nitems ; 
 int /*<<< orphan*/  numresppkts ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct req_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reqver ; 
 TYPE_1__ rpkt ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct pkt*,scalar_t__) ; 
 scalar_t__ seqno ; 
 int /*<<< orphan*/  toaddr ; 

__attribute__((used)) static void
FUNC6(void)
{
	FUNC1(3, ("request: flushing packet, %d items\n", nitems));
	/*
	 * Must send the last packet.  If nothing in here and nothing
	 * has been sent, send an error saying no data to be found.
	 */
	if (seqno == 0 && nitems == 0)
		FUNC4(toaddr, frominter, (struct req_pkt *)&rpkt,
			INFO_ERR_NODATA);
	else {
		rpkt.rm_vn_mode = FUNC2(RESP_BIT, 0, reqver);
		rpkt.auth_seq = FUNC0(0, seqno);
		rpkt.err_nitems = FUNC3((u_short)nitems);
		FUNC5(toaddr, frominter, -1, (struct pkt *)&rpkt,
			RESP_HEADER_SIZE+databytes);
		numresppkts++;
	}
}