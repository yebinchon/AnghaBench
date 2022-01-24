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
typedef  void* time_t ;
struct tm {int tm_hour; int tm_min; void* tm_sec; } ;
struct sched_event {scalar_t__ t_when; int /*<<< orphan*/  t_lex; struct sched_event* t_next; } ;
struct command {int dummy; } ;
typedef  char Char ;

/* Variables and functions */
 char* FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  ERR_NOSCHED ; 
 int /*<<< orphan*/  ERR_SCHEDCOM ; 
 int /*<<< orphan*/  ERR_SCHEDEV ; 
 int /*<<< orphan*/  ERR_SCHEDREL ; 
 int /*<<< orphan*/  ERR_SCHEDTIME ; 
 int /*<<< orphan*/  ERR_SCHEDUSAGE ; 
 int /*<<< orphan*/  FMT_SCHED ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 char const* STRNULL ; 
 int /*<<< orphan*/  STRsched ; 
 int /*<<< orphan*/  FUNC2 (struct command*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/  (*) (struct sched_event*)) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct tm* FUNC8 (void**) ; 
 int /*<<< orphan*/  FUNC9 (char**) ; 
 struct sched_event* sched_ptr ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (void**) ; 
 char* FUNC14 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 struct sched_event* FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sched_event*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

void
FUNC19(Char **v, struct command *c)
{
    struct sched_event *tp, **pp;
    time_t  cur_time;
    int     count, hours, minutes, dif_hour, dif_min;
    Char   *cp;
    int    relative;		/* time specified as +hh:mm */
    struct tm *ltp;

    FUNC2(c);
/* This is a major kludge because of a gcc linker  */
/* Problem.  It may or may not be needed for you   */
#if defined(_MINIX) && !defined(_MINIX_VMD)
    char kludge[10];
    extern char *sprintf();
    sprintf(kludge, CGETS(24, 1, "kludge"));
#endif /* _MINIX && !_MINIX_VMD */

    v++;
    cp = *v++;
    if (cp == NULL) {
	const Char *fmt;
	if ((fmt = FUNC15(STRsched)) == STRNULL)
	    fmt = FUNC12("%h\t%T\t%R\n");
	/* print list of scheduled events */
	for (count = 1, tp = sched_ptr; tp; count++, tp = tp->t_next) {
	    Char *buf, *str;

	    buf = FUNC4(tp->t_lex);
	    FUNC6(buf, xfree);
	    str = FUNC14(FMT_SCHED, fmt, FUNC10(buf), tp->t_when, &count);
	    FUNC7(buf);
	    FUNC6(str, xfree);
	    for (cp = str; *cp;)
		FUNC18(*cp++);
	    FUNC7(str);
	}
	return;
    }

    if (*cp == '-') {
	/* remove item from list */
	if (!sched_ptr)
	    FUNC11(ERR_NOSCHED);
	if (*v)
	    FUNC11(ERR_SCHEDUSAGE);
	count = FUNC3(FUNC10(++cp));
	if (count <= 0)
	    FUNC11(ERR_SCHEDUSAGE);
	pp = &sched_ptr;
	tp = sched_ptr;
	while (--count) {
	    if (tp->t_next == 0)
		break;
	    else {
		pp = &tp->t_next;
		tp = tp->t_next;
	    }
	}
	if (count)
	    FUNC11(ERR_SCHEDEV);
	*pp = tp->t_next;
	FUNC5(tp->t_lex);
	FUNC17(tp);
	return;
    }

    /* else, add an item to the list */
    if (!*v)
	FUNC11(ERR_SCHEDCOM);
    relative = 0;
    if (!FUNC1(*cp)) {	/* not abs. time */
	if (*cp != '+')
	    FUNC11(ERR_SCHEDUSAGE);
	cp++, relative++;
    }
    minutes = 0;
    hours = FUNC3(FUNC10(cp));
    while (*cp && *cp != ':' && *cp != 'a' && *cp != 'p')
	cp++;
    if (*cp && *cp == ':')
	minutes = FUNC3(FUNC10(++cp));
    if ((hours < 0) || (minutes < 0) ||
	(hours > 23) || (minutes > 59))
	FUNC11(ERR_SCHEDTIME);
    while (*cp && *cp != 'p' && *cp != 'a')
	cp++;
    if (*cp && relative)
	FUNC11(ERR_SCHEDREL);
    if (*cp == 'p')
	hours += 12;
    (void) FUNC13(&cur_time);
    ltp = FUNC8(&cur_time);
    if (relative) {
	dif_hour = hours;
	dif_min = minutes;
    }
    else {
	if ((dif_hour = hours - ltp->tm_hour) < 0)
	    dif_hour += 24;
	if ((dif_min = minutes - ltp->tm_min) < 0) {
	    dif_min += 60;
	    if ((--dif_hour) < 0)
		dif_hour = 23;
	}
    }
    tp = FUNC16(1, sizeof *tp);
#ifdef _SX
    tp->t_when = cur_time - ltp->tm_sec + dif_hour * 3600 + dif_min * 60;
#else	/* _SX */
    tp->t_when = cur_time - ltp->tm_sec + dif_hour * 3600L + dif_min * 60L;
#endif /* _SX */
    /* use of tm_sec: get to beginning of minute. */
    for (pp = &sched_ptr; *pp != NULL && tp->t_when >= (*pp)->t_when;
	 pp = &(*pp)->t_next)
	;
    tp->t_next = *pp;
    *pp = tp;
    tp->t_lex = FUNC9(v);
}