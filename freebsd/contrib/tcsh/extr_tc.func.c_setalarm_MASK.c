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
typedef  int time_t ;
struct varent {int /*<<< orphan*/ ** vec; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int CLK_TCK ; 
 int /*<<< orphan*/  STRautologout ; 
 struct varent* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  alm_fun ; 
 scalar_t__ alrmcatch_disabled ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  auto_lock ; 
 int /*<<< orphan*/  auto_logout ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  sched_run ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 

void
FUNC6(int lck)
{
    struct varent *vp;
    Char   *cp;
    unsigned alrm_time = 0, logout_time, lock_time;
    time_t cl, nl, sched_dif;

    if ((vp = FUNC0(STRautologout)) != NULL && vp->vec != NULL) {
	if ((cp = vp->vec[0]) != 0) {
	    if ((logout_time = (unsigned) FUNC2(FUNC4(cp)) * 60) > 0) {
#ifdef SOLARIS2
		/*
		 * Solaris alarm(2) uses a timer based in clock ticks
		 * internally so it multiplies our value with CLK_TCK...
		 * Of course that can overflow leading to unexpected
		 * results, so we clip it here. Grr. Where is that
		 * documented folks?
		 */
		if (logout_time >= 0x7fffffff / CLK_TCK)
			logout_time = 0x7fffffff / CLK_TCK;
#endif /* SOLARIS2 */
		alrm_time = logout_time;
		alm_fun = auto_logout;
	    }
	}
	if ((cp = vp->vec[1]) != 0) {
	    if ((lock_time = (unsigned) FUNC2(FUNC4(cp)) * 60) > 0) {
		if (lck) {
		    if (alrm_time == 0 || lock_time < alrm_time) {
			alrm_time = lock_time;
			alm_fun = auto_lock;
		    }
		}
		else /* lock_time always < alrm_time */
		    if (alrm_time)
			alrm_time -= lock_time;
	    }
	}
    }
    if ((nl = FUNC3()) != -1) {
	(void) FUNC5(&cl);
	sched_dif = nl > cl ? nl - cl : 0;
	if ((alrm_time == 0) || ((unsigned) sched_dif < alrm_time)) {
	    alrm_time = ((unsigned) sched_dif) + 1;
	    alm_fun = sched_run;
	}
    }
    alrmcatch_disabled = 0;
    (void) FUNC1(alrm_time);	/* Autologout ON */
}