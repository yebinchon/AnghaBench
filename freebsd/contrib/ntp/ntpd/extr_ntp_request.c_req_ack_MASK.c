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
struct req_pkt {int /*<<< orphan*/  request; int /*<<< orphan*/  implementation; } ;
struct pkt {int dummy; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  endpt ;
struct TYPE_2__ {int /*<<< orphan*/  mbz_itemsize; int /*<<< orphan*/  err_nitems; int /*<<< orphan*/  request; int /*<<< orphan*/  implementation; int /*<<< orphan*/  auth_seq; int /*<<< orphan*/  rm_vn_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESP_BIT ; 
 int /*<<< orphan*/  RESP_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * errorcounter ; 
 int /*<<< orphan*/  reqver ; 
 TYPE_1__ rpkt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,struct pkt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(
	sockaddr_u *srcadr,
	endpt *inter,
	struct req_pkt *inpkt,
	int errcode
	)
{
	/*
	 * fill in the fields
	 */
	rpkt.rm_vn_mode = FUNC3(RESP_BIT, 0, reqver);
	rpkt.auth_seq = FUNC0(0, 0);
	rpkt.implementation = inpkt->implementation;
	rpkt.request = inpkt->request;
	rpkt.err_nitems = FUNC1(errcode, 0); 
	rpkt.mbz_itemsize = FUNC2(0);

	/*
	 * send packet and bump counters
	 */
	FUNC4(srcadr, inter, -1, (struct pkt *)&rpkt, RESP_HEADER_SIZE);
	errorcounter[errcode]++;
}