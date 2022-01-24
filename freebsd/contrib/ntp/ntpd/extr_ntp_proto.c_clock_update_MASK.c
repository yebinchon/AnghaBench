#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct peer {scalar_t__ minpoll; scalar_t__ maxpoll; scalar_t__ stratum; double rootdisp; double disp; double update; int /*<<< orphan*/  associd; int /*<<< orphan*/  epoch; int /*<<< orphan*/  dst; scalar_t__ rootdelay; scalar_t__ delay; int /*<<< orphan*/  srcadr; int /*<<< orphan*/  refid; } ;
struct TYPE_3__ {int /*<<< orphan*/  l_ui; } ;
typedef  TYPE_1__ l_fp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LEAP_NOTINSYNC ; 
 int /*<<< orphan*/  LEAP_NOWARNING ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LSPROX_NOWARN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ STRATUM_REFCLOCK ; 
 scalar_t__ STRATUM_UNSPEC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 double clock_phi ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  crypto_flags ; 
 int /*<<< orphan*/  FUNC6 () ; 
 double current_time ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 double FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 char* FUNC10 (char*) ; 
 int leap_vote_del ; 
 int leap_vote_ins ; 
 int /*<<< orphan*/  leapsec ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (struct peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct peer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 char* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sys_epoch ; 
 double sys_jitter ; 
 int /*<<< orphan*/  sys_leap ; 
 double sys_mindisp ; 
 int /*<<< orphan*/  sys_offset ; 
 struct peer* sys_peer ; 
 scalar_t__ sys_poll ; 
 int /*<<< orphan*/  sys_precision ; 
 int /*<<< orphan*/  sys_refid ; 
 int /*<<< orphan*/  sys_reftime ; 
 scalar_t__ sys_rootdelay ; 
 double sys_rootdisp ; 
 scalar_t__ sys_stratum ; 
 int sys_survivors ; 
 int waitsync_fd_to_close ; 

__attribute__((used)) static void
FUNC23(
	struct peer *peer	/* peer structure pointer */
	)
{
	double	dtemp;
	l_fp	now;
#ifdef HAVE_LIBSCF_H
	char	*fmri;
#endif /* HAVE_LIBSCF_H */

	/*
	 * Update the system state variables. We do this very carefully,
	 * as the poll interval might need to be clamped differently.
	 */
	sys_peer = peer;
	sys_epoch = peer->epoch;
	if (sys_poll < peer->minpoll)
		sys_poll = peer->minpoll;
	if (sys_poll > peer->maxpoll)
		sys_poll = peer->maxpoll;
	FUNC17(peer, sys_poll);
	sys_stratum = FUNC15(peer->stratum + 1, STRATUM_UNSPEC);
	if (   peer->stratum == STRATUM_REFCLOCK
	    || peer->stratum == STRATUM_UNSPEC)
		sys_refid = peer->refid;
	else
		sys_refid = FUNC3(&peer->srcadr);
	/*
	 * Root Dispersion (E) is defined (in RFC 5905) as:
	 *
	 * E = p.epsilon_r + p.epsilon + p.psi + PHI*(s.t - p.t) + |THETA|
	 *
	 * where:
	 *  p.epsilon_r is the PollProc's root dispersion
	 *  p.epsilon   is the PollProc's dispersion
	 *  p.psi       is the PollProc's jitter
	 *  THETA       is the combined offset
	 *
	 * NB: Think Hard about where these numbers come from and
	 * what they mean.  When did peer->update happen?  Has anything
	 * interesting happened since then?  What values are the most
	 * defensible?  Why?
	 *
	 * DLM thinks this equation is probably the best of all worse choices.
	 */
	dtemp	= peer->rootdisp
		+ peer->disp
		+ sys_jitter
		+ clock_phi * (current_time - peer->update)
		+ FUNC8(sys_offset);

	if (dtemp > sys_mindisp)
		sys_rootdisp = dtemp;
	else
		sys_rootdisp = sys_mindisp;
	sys_rootdelay = peer->delay + peer->rootdelay;
	sys_reftime = peer->dst;

	FUNC0(1, ("clock_update: at %lu sample %lu associd %d\n",
		    current_time, peer->epoch, peer->associd));

	/*
	 * Comes now the moment of truth. Crank the clock discipline and
	 * see what comes out.
	 */
	switch (FUNC13(peer, sys_offset)) {

	/*
	 * Clock exceeds panic threshold. Life as we know it ends.
	 */
	case -1:
#ifdef HAVE_LIBSCF_H
		/*
		 * For Solaris enter the maintenance mode.
		 */
		if ((fmri = getenv("SMF_FMRI")) != NULL) {
			if (smf_maintain_instance(fmri, 0) < 0) {
				printf("smf_maintain_instance: %s\n",
				    scf_strerror(scf_error()));
				exit(1);
			}
			/*
			 * Sleep until SMF kills us.
			 */
			for (;;)
				pause();
		}
#endif /* HAVE_LIBSCF_H */
		FUNC7 (-1);
		/* not reached */

	/*
	 * Clock was stepped. Flush all time values of all peers.
	 */
	case 2:
		FUNC4();
		FUNC21(LEAP_NOTINSYNC);
		sys_stratum = STRATUM_UNSPEC;
		FUNC14(&sys_refid, "STEP", 4);
		sys_rootdelay = 0;
		sys_rootdisp = 0;
		FUNC2(&sys_reftime);
		sys_jitter = FUNC1(sys_precision);
		FUNC12();
		break;

	/*
	 * Clock was slewed. Handle the leapsecond stuff.
	 */
	case 1:

		/*
		 * If this is the first time the clock is set, reset the
		 * leap bits. If crypto, the timer will goose the setup
		 * process.
		 */
		if (sys_leap == LEAP_NOTINSYNC) {
			FUNC21(LEAP_NOWARNING);
#ifdef AUTOKEY
			if (crypto_flags)
				crypto_update();
#endif	/* AUTOKEY */
			/*
			 * If our parent process is waiting for the
			 * first clock sync, send them home satisfied.
			 */
#ifdef HAVE_WORKING_FORK
			if (waitsync_fd_to_close != -1) {
				close(waitsync_fd_to_close);
				waitsync_fd_to_close = -1;
				DPRINTF(1, ("notified parent --wait-sync is done\n"));
			}
#endif /* HAVE_WORKING_FORK */

		}

		/*
		 * If there is no leap second pending and the number of
		 * survivor leap bits is greater than half the number of
		 * survivors, try to schedule a leap for the end of the
		 * current month. (This only works if no leap second for
		 * that range is in the table, so doing this more than
		 * once is mostly harmless.)
		 */
		if (leapsec == LSPROX_NOWARN) {
			if (   leap_vote_ins > leap_vote_del
			    && leap_vote_ins > sys_survivors / 2) {
				FUNC9(&now);
				FUNC11(TRUE, now.l_ui, NULL);
			}
			if (   leap_vote_del > leap_vote_ins
			    && leap_vote_del > sys_survivors / 2) {
				FUNC9(&now);
				FUNC11(FALSE, now.l_ui, NULL);
			}
		}
		break;

	/*
	 * Popcorn spike or step threshold exceeded. Pretend it never
	 * happened.
	 */
	default:
		break;
	}
}