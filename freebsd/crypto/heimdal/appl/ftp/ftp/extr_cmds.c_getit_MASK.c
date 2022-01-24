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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_mon; int tm_year; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct stat {int /*<<< orphan*/  st_mtime; scalar_t__ st_size; } ;

/* Variables and functions */
 int COMPLETE ; 
 int MaxPathLen ; 
 int /*<<< orphan*/  FUNC0 (int*,char***,char*) ; 
 int code ; 
 int FUNC1 (char*,char*) ; 
 scalar_t__ debug ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 struct tm* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char) ; 
 scalar_t__ FUNC7 (unsigned char) ; 
 scalar_t__ mapflag ; 
 scalar_t__ mcase ; 
 scalar_t__ ntflag ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,char*,int,int) ; 
 char* reply_string ; 
 scalar_t__ restart_point ; 
 int FUNC10 (char*,char*,int*,int*,int*,int*,int*,int*) ; 
 int FUNC11 (char*,struct stat*) ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

int
FUNC13(int argc, char **argv, int restartit, char *filemode)
{
	int loc = 0;
	int local_given = 1;
	char *oldargv1, *oldargv2;

	if (argc == 2) {
		argc++;
		local_given = 0;
		argv[2] = argv[1];
		loc++;
	}
	if ((argc < 2 && !FUNC0(&argc, &argv, "remote-file")) ||
	    (argc < 3 && !FUNC0(&argc, &argv, "local-file"))) {
		FUNC8("usage: %s remote-file [ local-file ]\n", argv[0]);
		code = -1;
		return (0);
	}
	oldargv1 = argv[1];
	oldargv2 = argv[2];
	if (!FUNC4(&argv[2])) {
		code = -1;
		return (0);
	}
	if (loc && mcase) {
		char *tp = argv[1], *tp2, tmpbuf[MaxPathLen];

		while (*tp && !FUNC6((unsigned char)*tp)) {
			tp++;
		}
		if (!*tp) {
			tp = argv[2];
			tp2 = tmpbuf;
			while ((*tp2 = *tp) != '\0') {
				if (FUNC7((unsigned char)*tp2)) {
					*tp2 = 'a' + *tp2 - 'A';
				}
				tp++;
				tp2++;
			}
			argv[2] = tmpbuf;
		}
	}
	if (loc && ntflag)
		argv[2] = FUNC3(argv[2]);
	if (loc && mapflag)
		argv[2] = FUNC2(argv[2]);
	if (restartit) {
		struct stat stbuf;
		int ret;

		ret = FUNC11(argv[2], &stbuf);
		if (restartit == 1) {
			if (ret < 0) {
				FUNC12("local: %s", argv[2]);
				return (0);
			}
			restart_point = stbuf.st_size;
		} else if (ret == 0) {
			int overbose;
			int cmdret;
			int yy, mo, day, hour, min, sec;
			struct tm *tm;
			time_t mtime = stbuf.st_mtime;

			overbose = verbose;
			if (debug == 0)
				verbose = -1;
			cmdret = FUNC1("MDTM %s", argv[1]);
			verbose = overbose;
			if (cmdret != COMPLETE) {
				FUNC8("%s\n", reply_string);
				return (0);
			}
			if (FUNC10(reply_string,
				   "%*s %04d%02d%02d%02d%02d%02d",
				   &yy, &mo, &day, &hour, &min, &sec)
			    != 6) {
				FUNC8 ("bad MDTM result\n");
				return (0);
			}

			tm = FUNC5(&mtime);
			tm->tm_mon++;
			tm->tm_year += 1900;

			if ((tm->tm_year > yy) ||
			    (tm->tm_year == yy &&
			     tm->tm_mon > mo) ||
			    (tm->tm_mon == mo &&
			     tm->tm_mday > day) ||
			    (tm->tm_mday == day &&
			     tm->tm_hour > hour) ||
			    (tm->tm_hour == hour &&
			     tm->tm_min > min) ||
			    (tm->tm_min == min &&
			     tm->tm_sec > sec))
				return (1);
		}
	}

	FUNC9("RETR", argv[2], argv[1], filemode,
		    argv[1] != oldargv1 || argv[2] != oldargv2, local_given);
	restart_point = 0;
	return (0);
}