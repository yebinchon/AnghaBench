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
typedef  int encioc_enc_status_t ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int ALLSTAT ; 
 int /*<<< orphan*/  ENCIOC_GETENCSTAT ; 
 int /*<<< orphan*/  ENCIOC_INIT ; 
 int /*<<< orphan*/  ENCIOC_SETENCSTAT ; 
 int /*<<< orphan*/  LOG_ALERT ; 
 int LOG_CONS ; 
 int /*<<< orphan*/  LOG_CRIT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int LOG_PERROR ; 
 int /*<<< orphan*/  LOG_USER ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  O_RDWR ; 
 int SES_ENCSTAT_CRITICAL ; 
 int SES_ENCSTAT_INFO ; 
 int SES_ENCSTAT_NONCRITICAL ; 
 int SES_ENCSTAT_UNRECOV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,char*,...) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* FUNC6 (int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*) ; 

int
FUNC13(int a, char **v)
{
	static const char *usage =
	    "usage: %s [ -c ] [ -d ] [ -t pollinterval ] device [ device ]\n";
	int fd, polltime, dev, nodaemon, clear, c;
	encioc_enc_status_t stat, nstat, *carray;

	if (a < 2) {
		FUNC3(stderr, usage, *v);
		return (1);
	}

	nodaemon = 0;
	polltime = 30;
	clear = 0;
	while ((c = FUNC4(a, v, "cdt:")) != -1) {
		switch (c) {
		case 'c':
			clear = 1;
			break;
		case 'd':
			nodaemon = 1;
			break;
		case 't':
			polltime = FUNC0(optarg);
			break;
		default:
			FUNC3(stderr, usage, *v);
			return (1);
		}
	}

	carray = FUNC6(a);
	if (carray == NULL) {
		FUNC9("malloc");
		return (1);
	}
	for (dev = optind; dev < a; dev++)
		carray[dev] = (encioc_enc_status_t) -1;

	/*
	 * Check to make sure we can open all devices
	 */
	for (dev = optind; dev < a; dev++) {
		fd = FUNC7(v[dev], O_RDWR);
		if (fd < 0) {
			FUNC9(v[dev]);
			return (1);
		}
		if (FUNC5(fd, ENCIOC_INIT, NULL) < 0) {
			FUNC3(stderr, "%s: ENCIOC_INIT fails- %s\n",
			    v[dev], FUNC11(errno));
			return (1);
		}
		(void) FUNC1(fd);
	}
	if (nodaemon == 0) {
		if (FUNC2(0, 0) < 0) {
			FUNC9("daemon");
			return (1);
		}
		FUNC8("sesd", LOG_CONS, LOG_USER);
	} else {
		FUNC8("sesd", LOG_CONS|LOG_PERROR, LOG_USER);
	}

	for (;;) {
		for (dev = optind; dev < a; dev++) {
			fd = FUNC7(v[dev], O_RDWR);
			if (fd < 0) {
				FUNC12(LOG_ERR, "%s: %m", v[dev]);
				continue;
			}

			/*
			 * Get the actual current enclosure status.
			 */
			if (FUNC5(fd, ENCIOC_GETENCSTAT, (caddr_t) &stat) < 0) {
				FUNC12(LOG_ERR,
				    "%s: ENCIOC_GETENCSTAT- %m", v[dev]);
				(void) FUNC1(fd);
				continue;
			}
			if (stat != 0 && clear) {
				nstat = 0;
				if (FUNC5(fd, ENCIOC_SETENCSTAT,
				    (caddr_t) &nstat) < 0) {
					FUNC12(LOG_ERR,
					    "%s: ENCIOC_SETENCSTAT- %m", v[dev]);
				}
			}
			(void) FUNC1(fd);

			if (stat == carray[dev])
				continue;

			carray[dev] = stat;
			if ((stat & ALLSTAT) == 0) {
				FUNC12(LOG_NOTICE,
				    "%s: Enclosure Status OK", v[dev]);
			}
			if (stat & SES_ENCSTAT_INFO) {
				FUNC12(LOG_NOTICE,
				    "%s: Enclosure Has Information", v[dev]);
			}
			if (stat & SES_ENCSTAT_NONCRITICAL) {
				FUNC12(LOG_WARNING,
				    "%s: Enclosure Non-Critical", v[dev]);
			}
			if (stat & SES_ENCSTAT_CRITICAL) {
				FUNC12(LOG_CRIT,
				    "%s: Enclosure Critical", v[dev]);
			}
			if (stat & SES_ENCSTAT_UNRECOV) {
				FUNC12(LOG_ALERT,
				    "%s: Enclosure Unrecoverable", v[dev]);
			}
		}
		FUNC10(polltime);
	}
	/* NOTREACHED */
}