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
struct timezone {int dummy; } ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  debug ; 
 int dofilter ; 
 int doprocess ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct timezone*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  lasttv ; 
 int FUNC4 (int,char**,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 char* progname ; 
 int showtimes ; 
 int /*<<< orphan*/  stderr ; 
 int usechuldisc ; 

int
FUNC8(
	int argc,
	char *argv[]
	)
{
	int c;
	int errflg = 0;
	extern int ntp_optind;

	progname = argv[0];
	while ((c = FUNC4(argc, argv, "cdfpt")) != EOF)
	    switch (c) {
		case 'c':
#ifdef STREAM
		    usechuldisc = 1;
		    break;
#endif
#ifdef CHULDISC
		    usechuldisc = 1;
		    break;
#endif
#ifndef STREAM
#ifndef CHULDISC
		    (void) FUNC1(stderr,
				   "%s: CHU line discipline not available on this machine\n",
				   progname);
		    FUNC0(2);
#endif
#endif
		case 'd':
		    ++debug;
		    break;
		case 'f':
		    dofilter = 1;
		    break;
		case 'p':
		    doprocess = 1;
		case 't':
		    showtimes = 1;
		    break;
		default:
		    errflg++;
		    break;
	    }
	if (errflg || ntp_optind+1 != argc) {
#ifdef STREAM
		(void) fprintf(stderr, "usage: %s [-dft] tty_device\n",
			       progname);
#endif
#ifdef CHULDISC
		(void) fprintf(stderr, "usage: %s [-dft] tty_device\n",
			       progname);
#endif
#ifndef STREAM
#ifndef CHULDISC
		(void) FUNC1(stderr, "usage: %s [-cdft] tty_device\n",
			       progname);
#endif
#endif
		FUNC0(2);
	}

	(void) FUNC2(&lasttv, (struct timezone *)0);
	c = FUNC5(argv[ntp_optind]);
	FUNC3();
#ifdef STREAM
	if (usechuldisc)
	    process_ldisc(c);
	else
#endif
#ifdef CHULDISC
	    if (usechuldisc)
		process_ldisc(c);
	    else
#endif
		FUNC7(c);
	/*NOTREACHED*/
}