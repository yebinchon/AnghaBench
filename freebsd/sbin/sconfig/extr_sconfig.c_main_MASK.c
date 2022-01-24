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

/* Variables and functions */
 int MAXCHAN ; 
 int /*<<< orphan*/  SERIAL_GETVERSIONSTRING ; 
 int adapter_type ; 
 int /*<<< orphan*/  aflag ; 
 scalar_t__ cflag ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ eflag ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  fflag ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int,char**,char*) ; 
 scalar_t__ iflag ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,char**) ; 
 int* mask ; 
 scalar_t__ mflag ; 
 int FUNC7 (int) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int,int,char**) ; 
 scalar_t__ sflag ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int FUNC17 (char*) ; 
 scalar_t__ FUNC18 (char*,char*,int) ; 
 int FUNC19 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ tflag ; 
 int /*<<< orphan*/  uflag ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ vflag ; 
 scalar_t__ xflag ; 

int
FUNC21 (int argc, char **argv)
{
	char *p;
	int fd, need_header, chan_num;

	if (argc > 1 && FUNC16(argv[1], "help") == 0)
		FUNC20();

	for (;;) {
		switch (FUNC5 (argc, argv, "mseftucviax")) {
		case -1:
			break;
		case 'a':
			++aflag;
			continue;
		case 'm':
			++mflag;
			continue;
		case 's':
			++sflag;
			continue;
		case 'e':
			++eflag;
			continue;
		case 'f':
			++eflag;
			++fflag;
			continue;
		case 't':
			++tflag;
			continue;
		case 'u':
			++tflag;
			++uflag;
			continue;
		case 'c':
			++cflag;
			continue;
		case 'v':
			++vflag;
			continue;
		case 'i':
			++iflag;
			continue;
		case 'x':
			++xflag;
			continue;
		default:
			FUNC20();
		}
		break;
	}
	argc -= optind;
	argv += optind;

	if (argc <= 0) {
		FUNC4 ();
		need_header = 1;
		adapter_type = 0;
#ifndef __linux__
		for (; adapter_type < 4; ++adapter_type)
#endif
		{
		for (chan_num=0; chan_num<MAXCHAN; ++chan_num)
			if (mask[adapter_type*16+chan_num/8] & 1 << (chan_num & 7)) {
				fd = FUNC7 (chan_num);
				if (vflag) {
#ifdef __linux__
				char buf[256];
				if (FUNC6 (fd, SERIAL_GETVERSIONSTRING, &buf) >= 0) {
					FUNC14 ("Version: %s\n", buf);
					FUNC1 (fd);
					return (0);
				}
#endif
				}
				if (iflag) {
					FUNC8 (fd);
					FUNC11 (fd);
				} else if (sflag||xflag)
					FUNC13 (fd, need_header);
				else if (mflag)
					FUNC12 (fd, need_header);
				else if (eflag)
					FUNC9 (fd, need_header);
				else if (tflag)
					FUNC10 (fd, need_header);
				else if (cflag)
					FUNC0 (fd);
				else
					FUNC8 (fd);
				FUNC1 (fd);
				need_header = 0;
			}
		}
		return (0);
	}

	p = argv[0] + FUNC17 (argv[0]);
	while (p > argv[0] && p[-1] >= '0' && p[-1] <= '9')
		--p;
	chan_num = FUNC19 (p, 0, 10);
#ifndef __linux__
	if (strncasecmp ("cx", argv[0], 2)==0)
		adapter_type = 0;
	else if (strncasecmp ("ct", argv[0], 2)==0)
		adapter_type = 1;
	else if (strncasecmp ("cp", argv[0], 2)==0)
		adapter_type = 2;
	else if (strncasecmp ("ce", argv[0], 2)==0)
		adapter_type = 3;
	else {
		fprintf (stderr, "Wrong channel name\n");
		exit (-1);
	}
#endif
	argc--;
	argv++;

	fd = FUNC7 (chan_num);
	if (vflag) {
#ifdef __linux__
		char buf[256];
		if (FUNC6 (fd, SERIAL_GETVERSIONSTRING, &buf) >= 0)
			FUNC14 ("Version: %s\n", buf);
#endif
	}
	if (iflag) {
		FUNC8 (fd);
		FUNC11 (fd);
		FUNC1 (fd);
		return (0);
	}
	if (sflag||xflag) {
		FUNC13 (fd, 1);
		FUNC1 (fd);
		return (0);
	}
	if (mflag) {
		FUNC12 (fd, 1);
		FUNC1 (fd);
		return (0);
	}
	if (eflag) {
		FUNC9 (fd, 1);
		FUNC1 (fd);
		return (0);
	}
	if (tflag) {
		FUNC10 (fd, 1);
		FUNC1 (fd);
		return (0);
	}
	if (cflag) {
		FUNC0 (fd);
		FUNC1 (fd);
		return (0);
	}
	if (argc > 0)
		FUNC15 (fd, argc, argv);
	else
		FUNC8 (fd);
	FUNC1 (fd);
	return (0);
}