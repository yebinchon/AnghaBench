#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  rmp_session; int /*<<< orphan*/  rmp_offset; int /*<<< orphan*/  rmp_size; } ;
struct TYPE_14__ {int /*<<< orphan*/  rmp_session; int /*<<< orphan*/  rmp_offset; int /*<<< orphan*/  rmp_type; void* rmp_retcode; int /*<<< orphan*/  rmp_data; } ;
struct TYPE_13__ {int /*<<< orphan*/  rmp_session; } ;
struct rmp_packet {scalar_t__ r_type; TYPE_3__ r_rrq; TYPE_2__ r_rrpl; TYPE_1__ r_brpl; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_16__ {int /*<<< orphan*/  rmplen; int /*<<< orphan*/  bootfd; struct rmp_packet rmp; } ;
typedef  TYPE_4__ RMPCONN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_4__* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 TYPE_4__* FUNC5 (TYPE_4__*) ; 
 scalar_t__ RMPREADDATA ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ RMP_BOOT_REPL ; 
 void* RMP_E_ABORT ; 
 void* RMP_E_BADSID ; 
 void* RMP_E_EOF ; 
 void* RMP_E_OKAY ; 
 int /*<<< orphan*/  RMP_READ_REPL ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC13(RMPCONN *rconn)
{
	int retval = 0;
	RMPCONN *oldconn;
	struct rmp_packet *rpl, *req;
	int size = 0;
	int madeconn = 0;

	/*
	 *  Find the old connection.  If one doesn't exist, create one only
	 *  to return the error code.
	 */
	if ((oldconn = FUNC2(rconn)) == NULL) {
		if ((oldconn = FUNC5(rconn)) == NULL)
			return(0);
		FUNC12(LOG_ERR, "SendReadRepl: no active connection (%s)",
		       FUNC1(rconn));
		madeconn++;
	}

	req = &rconn->rmp;		/* cache ptr to request packet */
	rpl = &oldconn->rmp;		/* cache ptr to reply packet */

	if (madeconn) {			/* no active connection above; abort */
		rpl->r_rrpl.rmp_retcode = RMP_E_ABORT;
		retval = 1;
		goto sendpkt;
	}

	/*
	 *  Make sure Session ID's match.
	 */
	if (FUNC10(req->r_rrq.rmp_session) !=
	    ((rpl->r_type == RMP_BOOT_REPL)? FUNC10(rpl->r_brpl.rmp_session):
	                                     FUNC10(rpl->r_rrpl.rmp_session))) {
		FUNC12(LOG_ERR, "SendReadRepl: bad session id (%s)",
		       FUNC1(rconn));
		rpl->r_rrpl.rmp_retcode = RMP_E_BADSID;
		retval = 1;
		goto sendpkt;
	}

	/*
	 *  If the requester asks for more data than we can fit,
	 *  silently clamp the request size down to RMPREADDATA.
	 *
	 *  N.B. I do not know if this is "legal", however it seems
	 *  to work.  This is necessary for bpfwrite() on machines
	 *  with MCLBYTES less than 1514.
	 */
	if (FUNC10(req->r_rrq.rmp_size) > RMPREADDATA)
		req->r_rrq.rmp_size = FUNC8(RMPREADDATA);

	/*
	 *  Position read head on file according to info in request packet.
	 */
	FUNC4(req->r_rrq.rmp_offset, size);
	if (FUNC9(oldconn->bootfd, (off_t)size, SEEK_SET) < 0) {
		FUNC12(LOG_ERR, "SendReadRepl: lseek: %m (%s)",
		       FUNC1(rconn));
		rpl->r_rrpl.rmp_retcode = RMP_E_ABORT;
		retval = 1;
		goto sendpkt;
	}

	/*
	 *  Read data directly into reply packet.
	 */
	if ((size = FUNC11(oldconn->bootfd, &rpl->r_rrpl.rmp_data,
	                 (int) FUNC10(req->r_rrq.rmp_size))) <= 0) {
		if (size < 0) {
			FUNC12(LOG_ERR, "SendReadRepl: read: %m (%s)",
			       FUNC1(rconn));
			rpl->r_rrpl.rmp_retcode = RMP_E_ABORT;
		} else {
			rpl->r_rrpl.rmp_retcode = RMP_E_EOF;
		}
		retval = 1;
		goto sendpkt;
	}

	/*
	 *  Set success indication.
	 */
	rpl->r_rrpl.rmp_retcode = RMP_E_OKAY;

sendpkt:
	/*
	 *  Set up assorted fields in reply packet.
	 */
	rpl->r_rrpl.rmp_type = RMP_READ_REPL;
	FUNC0(req->r_rrq.rmp_offset, rpl->r_rrpl.rmp_offset);
	rpl->r_rrpl.rmp_session = req->r_rrq.rmp_session;

	oldconn->rmplen = FUNC6(size);	/* set size of packet */

	retval &= FUNC7(oldconn);		/* send packet */

	if (madeconn)				/* clean up after ourself */
		FUNC3(oldconn);

	return (retval);
}