#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* be_move_done ) (union ctl_io*) ;} ;
struct TYPE_5__ {TYPE_1__* ctl_private; } ;
union ctl_io {TYPE_3__ scsiio; TYPE_2__ io_hdr; } ;
struct ctl_fe_ioctl_params {int state; int /*<<< orphan*/  sem; int /*<<< orphan*/  ioctl_mtx; } ;
typedef  int /*<<< orphan*/  params ;
typedef  int ctl_fe_ioctl_state ;
struct TYPE_4__ {struct ctl_fe_ioctl_params* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  CTL_IOCTL_DATAMOVE 130 
#define  CTL_IOCTL_DONE 129 
#define  CTL_IOCTL_INPROG 128 
 size_t CTL_PRIV_FRONTEND ; 
 int CTL_RETVAL_COMPLETE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_fe_ioctl_params*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (union ctl_io*) ; 

__attribute__((used)) static int
FUNC12(union ctl_io *io)
{
	struct ctl_fe_ioctl_params params;
	ctl_fe_ioctl_state last_state;
	int done, retval;

	FUNC1(&params, sizeof(params));
	FUNC8(&params.ioctl_mtx, "ctliocmtx", NULL, MTX_DEF);
	FUNC5(&params.sem, "ctlioccv");
	params.state = CTL_IOCTL_INPROG;
	last_state = params.state;

	io->io_hdr.ctl_private[CTL_PRIV_FRONTEND].ptr = &params;

	FUNC0(("cfi_submit_wait\n"));

	/* This shouldn't happen */
	if ((retval = FUNC3(io)) != CTL_RETVAL_COMPLETE)
		return (retval);

	done = 0;

	do {
		FUNC9(&params.ioctl_mtx);
		/*
		 * Check the state here, and don't sleep if the state has
		 * already changed (i.e. wakeup has already occurred, but we
		 * weren't waiting yet).
		 */
		if (params.state == last_state) {
			/* XXX KDM cv_wait_sig instead? */
			FUNC6(&params.sem, &params.ioctl_mtx);
		}
		last_state = params.state;

		switch (params.state) {
		case CTL_IOCTL_INPROG:
			/* Why did we wake up? */
			/* XXX KDM error here? */
			FUNC10(&params.ioctl_mtx);
			break;
		case CTL_IOCTL_DATAMOVE:
			FUNC0(("got CTL_IOCTL_DATAMOVE\n"));

			/*
			 * change last_state back to INPROG to avoid
			 * deadlock on subsequent data moves.
			 */
			params.state = last_state = CTL_IOCTL_INPROG;

			FUNC10(&params.ioctl_mtx);
			FUNC2(&io->scsiio);
			/*
			 * Note that in some cases, most notably writes,
			 * this will queue the I/O and call us back later.
			 * In other cases, generally reads, this routine
			 * will immediately call back and wake us up,
			 * probably using our own context.
			 */
			io->scsiio.be_move_done(io);
			break;
		case CTL_IOCTL_DONE:
			FUNC10(&params.ioctl_mtx);
			FUNC0(("got CTL_IOCTL_DONE\n"));
			done = 1;
			break;
		default:
			FUNC10(&params.ioctl_mtx);
			/* XXX KDM error here? */
			break;
		}
	} while (done == 0);

	FUNC7(&params.ioctl_mtx);
	FUNC4(&params.sem);

	return (CTL_RETVAL_COMPLETE);
}