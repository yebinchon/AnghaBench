#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_23__ {scalar_t__ (* sync ) (TYPE_6__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_22__ {int /*<<< orphan*/  rcv_path; int /*<<< orphan*/  rcv_mpath; TYPE_6__* db; } ;
struct TYPE_21__ {TYPE_1__* gp; TYPE_3__* ep; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* scr_busy ) (TYPE_2__*,char*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ EXF ;

/* Variables and functions */
 int /*<<< orphan*/  BUSY_OFF ; 
 int /*<<< orphan*/  BUSY_ON ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int) ; 
 int F_MODIFIED ; 
 int F_RCV_NORM ; 
 int F_RCV_ON ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  O_RECDIR ; 
 char* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCV_EMAIL ; 
 int /*<<< orphan*/  RCV_ENDSESSION ; 
 int /*<<< orphan*/  RCV_PRESERVE ; 
 int /*<<< orphan*/  RCV_SNAPSHOT ; 
 int /*<<< orphan*/  R_RECNOSYNC ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int,char*) ; 
 int FUNC15 (TYPE_2__*,char*,char*) ; 
 scalar_t__ FUNC16 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

int
FUNC20(
	SCR *sp,
	u_int flags)
{
	EXF *ep;
	int fd, rval;
	char *dp, *buf;

	/* Make sure that there's something to recover/sync. */
	ep = sp->ep;
	if (ep == NULL || !FUNC1(ep, F_RCV_ON))
		return (0);

	/* Sync the file if it's been modified. */
	if (FUNC1(ep, F_MODIFIED)) {
		if (ep->db->sync(ep->db, R_RECNOSYNC)) {
			FUNC0(ep, F_RCV_ON | F_RCV_NORM);
			FUNC10(sp, M_SYSERR,
			    ep->rcv_path, "060|File backup failed: %s");
			return (1);
		}

		/* REQUEST: don't remove backing file on exit. */
		if (FUNC3(RCV_PRESERVE))
			FUNC2(ep, F_RCV_NORM);

		/* REQUEST: send email. */
		if (FUNC3(RCV_EMAIL))
			FUNC13(sp, ep->rcv_mpath);
	}

	/*
	 * !!!
	 * Each time the user exec's :preserve, we have to snapshot all of
	 * the recovery information, i.e. it's like the user re-edited the
	 * file.  We copy the DB(3) backing file, and then create a new mail
	 * recovery file, it's simpler than exiting and reopening all of the
	 * underlying files.
	 *
	 * REQUEST: snapshot the file.
	 */
	rval = 0;
	if (FUNC3(RCV_SNAPSHOT)) {
		if (FUNC11(sp, O_RECDIR, 0))
			goto err;
		dp = FUNC4(sp, O_RECDIR);
		if ((buf = FUNC8(dp, "vi.XXXXXX")) == NULL) {
			FUNC9(sp, M_SYSERR, NULL);
			goto err;
		}
		if ((fd = FUNC15(sp, buf, dp)) == -1) {
			FUNC7(buf);
			goto err;
		}
		sp->gp->scr_busy(sp,
		    "061|Copying file for recovery...", BUSY_ON);
		if (FUNC12(sp, fd, ep->rcv_path) ||
		    FUNC5(fd) || FUNC14(sp, 1, buf)) {
			(void)FUNC19(buf);
			(void)FUNC5(fd);
			rval = 1;
		}
		FUNC7(buf);
		sp->gp->scr_busy(sp, NULL, BUSY_OFF);
	}
	if (0) {
err:		rval = 1;
	}

	/* REQUEST: end the file session. */
	if (FUNC3(RCV_ENDSESSION) && FUNC6(sp, NULL, 1))
		rval = 1;

	return (rval);
}