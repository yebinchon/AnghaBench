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
typedef  int /*<<< orphan*/  timeval_t ;
typedef  int /*<<< orphan*/  time_t ;
struct tms {scalar_t__ tms_cutime; scalar_t__ tms_cstime; int /*<<< orphan*/  tms_utime; int /*<<< orphan*/  tms_stime; } ;
struct sysrusage {scalar_t__ tms_cutime; scalar_t__ tms_cstime; int /*<<< orphan*/  tms_utime; int /*<<< orphan*/  tms_stime; } ;
struct rusage {int dummy; } ;
struct process_stats {scalar_t__ tms_cutime; scalar_t__ tms_cstime; int /*<<< orphan*/  tms_utime; int /*<<< orphan*/  tms_stime; } ;
typedef  int /*<<< orphan*/ * command ;
typedef  int /*<<< orphan*/  ruch ;
typedef  int /*<<< orphan*/  ru1 ;
typedef  int /*<<< orphan*/ * clock_t ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  PS_SELF ; 
 int /*<<< orphan*/  RUSAGE_CHILDREN ; 
 int /*<<< orphan*/  RUSAGE_SELF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tms*,struct tms*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rusage*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tms*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct tms*,int /*<<< orphan*/ *,int /*<<< orphan*/ ****) ; 
 int /*<<< orphan*/  ru0 ; 
 int /*<<< orphan*/  FUNC6 (struct tms*,struct tms*) ; 
 int /*<<< orphan*/ **** time0 ; 
 int /*<<< orphan*/ * FUNC7 (struct tms*) ; 
 int /*<<< orphan*/  times0 ; 

void
FUNC8(Char **v, struct command *c)
{
#ifdef BSDTIMES
    timeval_t timedol;
    struct sysrusage ru1, ruch;
#ifdef convex
    memset(&ru1, 0, sizeof(ru1));
    memset(&ruch, 0, sizeof(ruch));
#endif /* convex */

    (void) getrusage(RUSAGE_SELF, (struct rusage *) &ru1);
    (void) getrusage(RUSAGE_CHILDREN, (struct rusage *) &ruch);
    ruadd(&ru1,	&ruch);
    (void) gettimeofday(&timedol, NULL);
    prusage(&ru0, &ru1,	&timedol, &time0);
#else
# ifdef	_SEQUENT_
    timeval_t timedol;
    struct process_stats ru1, ruch;

    (void) get_process_stats(&timedol, PS_SELF,	&ru1, &ruch);
    ruadd(&ru1,	&ruch);
    prusage(&ru0, &ru1,	&timedol, &time0);
# else /* _SEQUENT_ */
#  ifndef POSIX
    time_t  timedol;
#  else	/* POSIX */
    clock_t timedol;
#  endif /* POSIX */

    struct tms times_dol;

    timedol = *FUNC7(&times_dol);
    times_dol.tms_stime	+= times_dol.tms_cstime;
    times_dol.tms_utime	+= times_dol.tms_cutime;
    times_dol.tms_cstime = 0;
    times_dol.tms_cutime = 0;
    FUNC5(&times0, &times_dol, &timedol, time0);
# endif	/* _SEQUENT_ */
#endif /* BSDTIMES */
    FUNC0(c);
    FUNC0(v);
}