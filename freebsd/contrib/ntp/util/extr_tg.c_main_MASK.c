#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tm {int tm_min; int tm_hour; int tm_yday; int tm_year; int tm_sec; } ;
struct timeval {int tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  device ;
typedef  int /*<<< orphan*/  code ;
struct TYPE_7__ {int port; int gain; int sample_rate; int channels; int precision; int encoding; } ;
struct TYPE_8__ {TYPE_1__ play; } ;
typedef  TYPE_2__ audio_info_t ;
struct TYPE_11__ {int sw; int arg; } ;
struct TYPE_10__ {int sw; int arg; } ;
struct TYPE_9__ {int sw; int arg; } ;

/* Variables and functions */
 int AUDIO_ENCODING_ULAW ; 
 int /*<<< orphan*/  AUDIO_GETINFO ; 
 int /*<<< orphan*/  AUDIO_SETINFO ; 
 int AUDIO_SPEAKER ; 
#define  COEF 137 
#define  DATA 136 
 int DATA0 ; 
 int DATA1 ; 
#define  DEC 135 
 int /*<<< orphan*/  DEVICE ; 
#define  DST1 134 
#define  DST2 133 
#define  DUT1 132 
 int /*<<< orphan*/  HIGH ; 
#define  IRIG 131 
#define  LEAP 130 
 int /*<<< orphan*/  LOW ; 
 int M2 ; 
 int M5 ; 
 int M8 ; 
#define  MIN 129 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int SECOND ; 
#define  WWV 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  dst ; 
 int dut1 ; 
 int encode ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ fd ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 struct tm* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ leap ; 
 int level ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 int port ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 TYPE_5__* progx ; 
 TYPE_4__* progy ; 
 TYPE_3__* progz ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int second ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int,int,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int*,...) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int) ; 
 int tone ; 
 int /*<<< orphan*/  utc ; 

int
FUNC16(
	int	argc,		/* command line options */
	char	**argv		/* poiniter to list of tokens */
	)
{
	struct timeval tv;	/* system clock at startup */
	audio_info_t info;	/* Sun audio structure */
	struct tm *tm = NULL;	/* structure returned by gmtime */
	char	device[50];	/* audio device */
	char	code[100];	/* timecode */
	int	rval, temp, arg, sw, ptr;
	int	minute, hour, day, year;
	int	i;

	/*
	 * Parse options
	 */
	FUNC15(device, DEVICE, sizeof(device));
	year = 0;
	while ((temp = FUNC3(argc, argv, "a:dhilsu:v:y:")) != -1) {
		switch (temp) {

		case 'a':	/* specify audio device (/dev/audio) */
			FUNC15(device, optarg, sizeof(device));
			break;

		case 'd':	/* set DST for summer (WWV/H only) */
			dst++;
			break;

		case 'h':	/* select WWVH sync frequency */
			tone = 1200;
			break;

		case 'i':	/* select irig format */
			encode = IRIG;
			break;

		case 'l':	/* set leap warning bit (WWV/H only) */
			leap++;
			break;

		case 's':	/* enable speaker */
			port |= AUDIO_SPEAKER;
			break;

		case 'u':	/* set DUT1 offset (-7 to +7) */
			FUNC13(optarg, "%d", &dut1);
			if (dut1 < 0)
				dut1 = FUNC0(dut1);
			else
				dut1 |= 0x8;
			break;

		case 'v':	/* set output level (0-255) */
			FUNC13(optarg, "%d", &level);
			break;

		case 'y':	/* set initial date and time */
			FUNC13(optarg, "%2d%3d%2d%2d", &year, &day,
			    &hour, &minute);
			utc++;
			break;

		defult:
			FUNC10("invalid option %c\n", temp);
			break;
		}
	}

	/*
	 * Open audio device and set options
	 */
	fd = FUNC8("/dev/audio", O_WRONLY);
	if (fd <= 0) {
		FUNC10("audio open %s\n", FUNC14(errno));
		FUNC2(1);
	}
	rval = FUNC6(fd, AUDIO_GETINFO, &info);
	if (rval < 0) {
		FUNC10("audio control %s\n", FUNC14(errno));
		FUNC2(0);
	}
	info.play.port = port;
	info.play.gain = level;
	info.play.sample_rate = SECOND;
	info.play.channels = 1;
	info.play.precision = 8;
	info.play.encoding = AUDIO_ENCODING_ULAW;
	FUNC10("port %d gain %d rate %d chan %d prec %d encode %d\n",
	    info.play.port, info.play.gain, info.play.sample_rate,
	    info.play.channels, info.play.precision,
	    info.play.encoding);
	FUNC6(fd, AUDIO_SETINFO, &info);

 	/*
	 * Unless specified otherwise, read the system clock and
	 * initialize the time.
	 */
	if (!utc) {
		FUNC4(&tv, NULL);
		tm = FUNC5(&tv.tv_sec);
		minute = tm->tm_min;
		hour = tm->tm_hour;
		day = tm->tm_yday + 1;
		year = tm->tm_year % 100;
		second = tm->tm_sec;

		/*
		 * Delay the first second so the generator is accurately
		 * aligned with the system clock within one sample (125
		 * microseconds ).
		 */
		FUNC1(SECOND - tv.tv_usec * 8 / 1000);
	}
	FUNC7(code, 0, sizeof(code));
	switch (encode) {

	/*
	 * For WWV/H and default time, carefully set the signal
	 * generator seconds number to agree with the current time.
	 */ 
	case WWV:
		FUNC10("year %d day %d time %02d:%02d:%02d tone %d\n",
		    year, day, hour, minute, second, tone);
		FUNC12(code, sizeof(code), "%01d%03d%02d%02d%01d",
		    year / 10, day, hour, minute, year % 10);
		FUNC10("%s\n", code);
		ptr = 8;
		for (i = 0; i <= second; i++) {
			if (progx[i].sw == DEC)
				ptr--;
		}
		break;

	/*
	 * For IRIG the signal generator runs every second, so requires
	 * no additional alignment.
	 */
	case IRIG:
		FUNC10("sbs %x year %d day %d time %02d:%02d:%02d\n",
		    0, year, day, hour, minute, second);
		break;
	}

	/*
	 * Run the signal generator to generate new timecode strings
	 * once per minute for WWV/H and once per second for IRIG.
	 */
	while(1) {

		/*
		 * Crank the state machine to propagate carries to the
		 * year of century. Note that we delayed up to one
		 * second for alignment after reading the time, so this
		 * is the next second.
		 */
		second = (second + 1) % 60;
		if (second == 0) {
			minute++;
			if (minute >= 60) {
				minute = 0;
				hour++;
			}
			if (hour >= 24) {
				hour = 0;
				day++;
			}

			/*
			 * At year rollover check for leap second.
			 */
			if (day >= (year & 0x3 ? 366 : 367)) {
				if (leap) {
					FUNC11(DATA0);
					FUNC10("\nleap!");
					leap = 0;
				}
				day = 1;
				year++;
			}
			if (encode == WWV) {
				FUNC12(code, sizeof(code),
				    "%01d%03d%02d%02d%01d", year / 10,
				    day, hour, minute, year % 10);
				FUNC10("\n%s\n", code);
				ptr = 8;
			}
		}
		if (encode == IRIG) {
			FUNC12(code, sizeof(code),
			    "%04x%04d%06d%02d%02d%02d", 0, year, day,
			    hour, minute, second);
			FUNC10("%s\n", code);
			ptr = 19;
		}

		/*
		 * Generate data for the second
		 */
		switch(encode) {

		/*
		 * The IRIG second consists of 20 BCD digits of width-
		 * modulateod pulses at 2, 5 and 8 ms and modulated 50
		 * percent on the 1000-Hz carrier.
		 */
		case IRIG:
			for (i = 0; i < 100; i++) {
				if (i < 10) {
					sw = progz[i].sw;
					arg = progz[i].arg;
				} else {
					sw = progy[i % 10].sw;
					arg = progy[i % 10].arg;
				}
				switch(sw) {

				case COEF:	/* send BCD bit */
					if (code[ptr] & arg) {
						FUNC9(M5, 1000, HIGH);
						FUNC9(M5, 1000, LOW);
						FUNC10("1");
					} else {
						FUNC9(M2, 1000, HIGH);
						FUNC9(M8, 1000, LOW);
						FUNC10("0");
					}
					break;

				case DEC:	/* send IM/PI bit */
					ptr--;
					FUNC10(" ");
					FUNC9(arg, 1000, HIGH);
					FUNC9(10 - arg, 1000, LOW);
					break;

				case MIN:	/* send data bit */
					FUNC9(arg, 1000, HIGH);
					FUNC9(10 - arg, 1000, LOW);
					FUNC10("M ");
					break;
				}
				if (ptr < 0)
					break;
			}
			FUNC10("\n");
			break;

		/*
		 * The WWV/H second consists of 9 BCD digits of width-
		 * modulateod pulses 200, 500 and 800 ms at 100-Hz.
		 */
		case WWV:
			sw = progx[second].sw;
			arg = progx[second].arg;
			switch(sw) {

			case DATA:		/* send data bit */
				FUNC11(arg);
				break;

			case COEF:		/* send BCD bit */
				if (code[ptr] & arg) {
					FUNC11(DATA1);
					FUNC10("1");
				} else {
					FUNC11(DATA0);
					FUNC10("0");
				}
				break;

			case LEAP:		/* send leap bit */
				if (leap) {
					FUNC11(DATA1);
					FUNC10("L ");
				} else {
					FUNC11(DATA0);
					FUNC10("  ");
				}
				break;

			case DEC:		/* send data bit */
				ptr--;
				FUNC11(arg);
				FUNC10(" ");
				break;

			case MIN:		/* send minute sync */
				FUNC9(arg, tone, HIGH);
				FUNC9(1000 - arg, tone, OFF);
				break;

			case DUT1:		/* send DUT1 bits */
				if (dut1 & arg)
					FUNC11(DATA1);
				else
					FUNC11(DATA0);
				break;
				
			case DST1:		/* send DST1 bit */
				ptr--;
				if (dst)
					FUNC11(DATA1);
				else
					FUNC11(DATA0);
				FUNC10(" ");
				break;

			case DST2:		/* send DST2 bit */
				if (dst)
					FUNC11(DATA1);
				else
					FUNC11(DATA0);
				break;
			}
		}
	}
}