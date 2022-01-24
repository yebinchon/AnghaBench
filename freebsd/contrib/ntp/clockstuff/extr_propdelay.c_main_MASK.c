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
 scalar_t__ Cflag ; 
 int EOF ; 
 scalar_t__ Gflag ; 
 scalar_t__ SUMMERHEIGHT ; 
 scalar_t__ WINTERHEIGHT ; 
 scalar_t__ Wflag ; 
 double FUNC0 (char*) ; 
 char* chulat ; 
 char* chulong ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (double,double,double,double,double,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 char* goes_east_long ; 
 char* goes_sat_lat ; 
 char* goes_stby_long ; 
 char* goes_up_lat ; 
 char* goes_up_long ; 
 char* goes_west_long ; 
 double height ; 
 scalar_t__ hflag ; 
 int /*<<< orphan*/  FUNC4 () ; 
 double FUNC5 (char*,int) ; 
 int FUNC6 (int,char**,char*) ; 
 char* ntp_optarg ; 
 int ntp_optind ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC7 (double,double,double,double,double,double,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* wwvhlat ; 
 char* wwvhlong ; 
 char* wwvlat ; 
 char* wwvlong ; 

int
FUNC8(
	int argc,
	char *argv[]
	)
{
	int c;
	int errflg = 0;
	double lat1, long1;
	double lat2, long2;
	double lat3, long3;

	FUNC4();

	progname = argv[0];
	while ((c = FUNC6(argc, argv, "dh:CWG")) != EOF)
	    switch (c) {
		case 'd':
		    ++debug;
		    break;
		case 'h':
		    hflag++;
		    height = FUNC0(ntp_optarg);
		    if (height <= 0.0) {
			    (void) FUNC3(stderr, "height %s unlikely\n",
					   ntp_optarg);
			    errflg++;
		    }
		    break;
		case 'C':
		    Cflag++;
		    break;
		case 'W':
		    Wflag++;
		    break;
		case 'G':
		    Gflag++;
		    break;
		default:
		    errflg++;
		    break;
	    }
	if (errflg || (!(Cflag || Wflag || Gflag) && ntp_optind+4 != argc) || 
	    ((Cflag || Wflag || Gflag) && ntp_optind+2 != argc)) {
		(void) FUNC3(stderr,
			       "usage: %s [-d] [-h height] lat1 long1 lat2 long2\n",
			       progname);
		(void) FUNC3(stderr," - or -\n");
		(void) FUNC3(stderr,
			       "usage: %s -CWG [-d] lat long\n",
			       progname);
		FUNC2(2);
	}

		   
	if (!(Cflag || Wflag || Gflag)) {
		lat1 = FUNC5(argv[ntp_optind], 1);
		long1 = FUNC5(argv[ntp_optind + 1], 0);
		lat2 = FUNC5(argv[ntp_optind + 2], 1);
		long2 = FUNC5(argv[ntp_optind + 3], 0);
		if (hflag) {
			FUNC1(lat1, long1, lat2, long2, height, "");
		} else {
			FUNC1(lat1, long1, lat2, long2, (double)SUMMERHEIGHT,
			     "summer propagation, ");
			FUNC1(lat1, long1, lat2, long2, (double)WINTERHEIGHT,
			     "winter propagation, ");
		}
	} else if (Wflag) {
		/*
		 * Compute delay from WWV
		 */
		lat1 = FUNC5(argv[ntp_optind], 1);
		long1 = FUNC5(argv[ntp_optind + 1], 0);
		lat2 = FUNC5(wwvlat, 1);
		long2 = FUNC5(wwvlong, 0);
		if (hflag) {
			FUNC1(lat1, long1, lat2, long2, height, "WWV  ");
		} else {
			FUNC1(lat1, long1, lat2, long2, (double)SUMMERHEIGHT,
			     "WWV  summer propagation, ");
			FUNC1(lat1, long1, lat2, long2, (double)WINTERHEIGHT,
			     "WWV  winter propagation, ");
		}

		/*
		 * Compute delay from WWVH
		 */
		lat2 = FUNC5(wwvhlat, 1);
		long2 = FUNC5(wwvhlong, 0);
		if (hflag) {
			FUNC1(lat1, long1, lat2, long2, height, "WWVH ");
		} else {
			FUNC1(lat1, long1, lat2, long2, (double)SUMMERHEIGHT,
			     "WWVH summer propagation, ");
			FUNC1(lat1, long1, lat2, long2, (double)WINTERHEIGHT,
			     "WWVH winter propagation, ");
		}
	} else if (Cflag) {
		lat1 = FUNC5(argv[ntp_optind], 1);
		long1 = FUNC5(argv[ntp_optind + 1], 0);
		lat2 = FUNC5(chulat, 1);
		long2 = FUNC5(chulong, 0);
		if (hflag) {
			FUNC1(lat1, long1, lat2, long2, height, "CHU ");
		} else {
			FUNC1(lat1, long1, lat2, long2, (double)SUMMERHEIGHT,
			     "CHU summer propagation, ");
			FUNC1(lat1, long1, lat2, long2, (double)WINTERHEIGHT,
			     "CHU winter propagation, ");
		}
	} else if (Gflag) {
		lat1 = FUNC5(goes_up_lat, 1);
		long1 = FUNC5(goes_up_long, 0);
		lat3 = FUNC5(argv[ntp_optind], 1);
		long3 = FUNC5(argv[ntp_optind + 1], 0);

		lat2 = FUNC5(goes_sat_lat, 1);

		long2 = FUNC5(goes_west_long, 0);
		FUNC7(lat1, long1, lat2, long2, lat3, long3,
			"GOES Delay via WEST");

		long2 = FUNC5(goes_stby_long, 0);
		FUNC7(lat1, long1, lat2, long2, lat3, long3,
			"GOES Delay via STBY");

		long2 = FUNC5(goes_east_long, 0);
		FUNC7(lat1, long1, lat2, long2, lat3, long3,
			"GOES Delay via EAST");

	}
	FUNC2(0);
}