#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;
struct TYPE_17__ {int rmp_retcode; int /*<<< orphan*/  rmp_session; } ;
struct TYPE_16__ {int /*<<< orphan*/  rmp_session; int /*<<< orphan*/  rmp_retcode; int /*<<< orphan*/  rmp_offset; } ;
struct TYPE_15__ {int /*<<< orphan*/  rmp_size; int /*<<< orphan*/  rmp_session; int /*<<< orphan*/  rmp_retcode; int /*<<< orphan*/  rmp_offset; } ;
struct TYPE_14__ {int /*<<< orphan*/  rmp_flnm; int /*<<< orphan*/  rmp_flnmsize; int /*<<< orphan*/  rmp_version; int /*<<< orphan*/  rmp_session; int /*<<< orphan*/  rmp_retcode; int /*<<< orphan*/  rmp_seqno; } ;
struct TYPE_13__ {char* rmp_machtype; int /*<<< orphan*/  rmp_flnm; int /*<<< orphan*/  rmp_flnmsize; int /*<<< orphan*/  rmp_version; int /*<<< orphan*/  rmp_session; int /*<<< orphan*/  rmp_retcode; int /*<<< orphan*/  rmp_seqno; } ;
struct TYPE_12__ {int dsap; int ssap; int /*<<< orphan*/  sxsap; int /*<<< orphan*/  dxsap; int /*<<< orphan*/  cntrl; } ;
struct rmp_packet {int r_type; TYPE_7__ r_done; TYPE_6__ r_rrpl; TYPE_5__ r_rrq; TYPE_4__ r_brpl; TYPE_3__ r_brq; TYPE_2__ hp_llc; } ;
struct TYPE_11__ {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_18__ {int rmplen; struct rmp_packet rmp; TYPE_1__ tstamp; } ;
typedef  TYPE_8__ RMPCONN ;

/* Variables and functions */
 int DIR_RCVD ; 
 int DIR_SENT ; 
 int /*<<< orphan*/ * DbgFp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 char* IntfName ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  RMP_BOOT_DONE 132 
#define  RMP_BOOT_REPL 131 
#define  RMP_BOOT_REQ 130 
 int RMP_MACHLEN ; 
 int RMP_PROBESID ; 
#define  RMP_READ_REPL 129 
#define  RMP_READ_REQ 128 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 
 struct tm* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

void
FUNC14(RMPCONN *rconn, int direct)
{
	static const char BootFmt[] = "\t\tRetCode:%u SeqNo:%x SessID:%x Vers:%u";
	static const char ReadFmt[] = "\t\tRetCode:%u Offset:%x SessID:%x\n";

	struct tm *tmp;
	struct rmp_packet *rmp;
	int i, omask;
	u_int32_t t;

	/*
	 *  Since we will be working with RmpConns as well as DbgFp, we
	 *  must block signals that can affect either.
	 */
	omask = FUNC11(FUNC12(SIGHUP)|FUNC12(SIGUSR1)|FUNC12(SIGUSR2));

	if (DbgFp == NULL) {			/* sanity */
		(void) FUNC13(omask);
		return;
	}

	/* display direction packet is going using '>>>' or '<<<' */
	FUNC8((direct==DIR_RCVD)?"<<< ":(direct==DIR_SENT)?">>> ":"", DbgFp);

	/* display packet timestamp */
	tmp = FUNC9((time_t *)&rconn->tstamp.tv_sec);
	FUNC6(DbgFp, "%02d:%02d:%02d.%06d   ", tmp->tm_hour, tmp->tm_min,
	        tmp->tm_sec, rconn->tstamp.tv_usec);

	/* display src or dst addr and information about network interface */
	FUNC6(DbgFp, "Addr: %s   Intf: %s\n", FUNC1(rconn), IntfName);

	rmp = &rconn->rmp;

	/* display IEEE 802.2 Logical Link Control header */
	(void) FUNC6(DbgFp, "\t802.2 LLC: DSAP:%x SSAP:%x CTRL:%x\n",
               rmp->hp_llc.dsap, rmp->hp_llc.ssap, FUNC10(rmp->hp_llc.cntrl));

	/* display HP extensions to 802.2 Logical Link Control header */
	(void) FUNC6(DbgFp, "\tHP Ext:    DXSAP:%x SXSAP:%x\n",
	               FUNC10(rmp->hp_llc.dxsap), FUNC10(rmp->hp_llc.sxsap));

	/*
	 *  Display information about RMP packet using type field to
	 *  determine what kind of packet this is.
	 */
	switch(rmp->r_type) {
		case RMP_BOOT_REQ:		/* boot request */
			(void) FUNC6(DbgFp, "\tBoot Request:");
			FUNC2(rmp->r_brq.rmp_seqno, t);
			if (FUNC10(rmp->r_brq.rmp_session) == RMP_PROBESID) {
				if (FUNC4(rmp->r_brq.rmp_seqno))
					FUNC8(" (Send Server ID)", DbgFp);
				else
					FUNC6(DbgFp," (Send Filename #%u)",t);
			}
			(void) FUNC7('\n', DbgFp);
			(void) FUNC6(DbgFp, BootFmt, rmp->r_brq.rmp_retcode,
			        t, FUNC10(rmp->r_brq.rmp_session),
			        FUNC10(rmp->r_brq.rmp_version));
			(void) FUNC6(DbgFp, "\n\t\tMachine Type: ");
			for (i = 0; i < RMP_MACHLEN; i++)
				(void) FUNC7(rmp->r_brq.rmp_machtype[i], DbgFp);
			FUNC0(rmp->r_brq.rmp_flnmsize, &rmp->r_brq.rmp_flnm);
			break;
		case RMP_BOOT_REPL:		/* boot reply */
			FUNC6(DbgFp, "\tBoot Reply:\n");
			FUNC2(rmp->r_brpl.rmp_seqno, t);
			(void) FUNC6(DbgFp, BootFmt, rmp->r_brpl.rmp_retcode,
			        t, FUNC10(rmp->r_brpl.rmp_session),
			        FUNC10(rmp->r_brpl.rmp_version));
			FUNC0(rmp->r_brpl.rmp_flnmsize,&rmp->r_brpl.rmp_flnm);
			break;
		case RMP_READ_REQ:		/* read request */
			(void) FUNC6(DbgFp, "\tRead Request:\n");
			FUNC2(rmp->r_rrq.rmp_offset, t);
			(void) FUNC6(DbgFp, ReadFmt, rmp->r_rrq.rmp_retcode,
			        t, FUNC10(rmp->r_rrq.rmp_session));
			(void) FUNC6(DbgFp, "\t\tNoOfBytes: %u\n",
			        FUNC10(rmp->r_rrq.rmp_size));
			break;
		case RMP_READ_REPL:		/* read reply */
			(void) FUNC6(DbgFp, "\tRead Reply:\n");
			FUNC2(rmp->r_rrpl.rmp_offset, t);
			(void) FUNC6(DbgFp, ReadFmt, rmp->r_rrpl.rmp_retcode,
			        t, FUNC10(rmp->r_rrpl.rmp_session));
			(void) FUNC6(DbgFp, "\t\tNoOfBytesSent: %d\n",
			        rconn->rmplen - FUNC3(0));
			break;
		case RMP_BOOT_DONE:		/* boot complete */
			(void) FUNC6(DbgFp, "\tBoot Complete:\n");
			(void) FUNC6(DbgFp, "\t\tRetCode:%u SessID:%x\n",
			        rmp->r_done.rmp_retcode,
			        FUNC10(rmp->r_done.rmp_session));
			break;
		default:			/* ??? */
			(void) FUNC6(DbgFp, "\tUnknown Type:(%d)\n",
				rmp->r_type);
	}
	(void) FUNC7('\n', DbgFp);
	(void) FUNC5(DbgFp);

	(void) FUNC13(omask);		/* reset old signal mask */
}