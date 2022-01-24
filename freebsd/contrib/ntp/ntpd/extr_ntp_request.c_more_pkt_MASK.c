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
typedef  int /*<<< orphan*/  u_short ;
struct pkt {int dummy; } ;
struct TYPE_3__ {void* data; } ;
struct TYPE_4__ {TYPE_1__ u; int /*<<< orphan*/  err_nitems; int /*<<< orphan*/  auth_seq; int /*<<< orphan*/  rm_vn_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ MAXSEQ ; 
 int /*<<< orphan*/  MORE_BIT ; 
 int /*<<< orphan*/  RESP_BIT ; 
 scalar_t__ RESP_DATA_SIZE ; 
 scalar_t__ RESP_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t databytes ; 
 void* exbuf ; 
 int /*<<< orphan*/  frominter ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ itemsize ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,unsigned int) ; 
 scalar_t__ nitems ; 
 int /*<<< orphan*/  numresppkts ; 
 int /*<<< orphan*/  reqver ; 
 TYPE_2__ rpkt ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct pkt*,scalar_t__) ; 
 scalar_t__ seqno ; 
 int /*<<< orphan*/  toaddr ; 
 int usingexbuf ; 

__attribute__((used)) static void *
FUNC6(void)
{
	/*
	 * If we were using the extra buffer, send the packet.
	 */
	if (usingexbuf) {
		FUNC1(3, ("request: sending pkt\n"));
		rpkt.rm_vn_mode = FUNC2(RESP_BIT, MORE_BIT, reqver);
		rpkt.auth_seq = FUNC0(0, seqno);
		rpkt.err_nitems = FUNC3((u_short)nitems);
		FUNC5(toaddr, frominter, -1, (struct pkt *)&rpkt,
			RESP_HEADER_SIZE + databytes);
		numresppkts++;

		/*
		 * Copy data out of exbuf into the packet.
		 */
		FUNC4(&rpkt.u.data[0], exbuf, (unsigned)itemsize);
		seqno++;
		databytes = 0;
		nitems = 0;
		usingexbuf = 0;
	}

	databytes += itemsize;
	nitems++;
	if (databytes + itemsize <= RESP_DATA_SIZE) {
		FUNC1(4, ("request: giving him more data\n"));
		/*
		 * More room in packet.  Give him the
		 * next address.
		 */
		return &rpkt.u.data[databytes];
	} else {
		/*
		 * No room in packet.  Give him the extra
		 * buffer unless this was the last in the sequence.
		 */
		FUNC1(4, ("request: into extra buffer\n"));
		if (seqno == MAXSEQ)
			return NULL;
		else {
			usingexbuf = 1;
			return exbuf;
		}
	}
}