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
 scalar_t__ COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int*,char***,char*) ; 
 int code ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 char* reply_string ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int*,int*,int*,int*,int*,int*) ; 
 int verbose ; 

void
FUNC4(int argc, char **argv)
{
	int overbose;

	if (argc < 2 && !FUNC0(&argc, &argv, "filename")) {
		FUNC2("usage: %s filename\n", argv[0]);
		code = -1;
		return;
	}
	overbose = verbose;
	if (debug == 0)
		verbose = -1;
	if (FUNC1("MDTM %s", argv[1]) == COMPLETE) {
		int yy, mo, day, hour, min, sec;
		FUNC3(reply_string, "%*s %04d%02d%02d%02d%02d%02d", &yy, &mo,
			&day, &hour, &min, &sec);
		/* might want to print this in local time */
		FUNC2("%s\t%02d/%02d/%04d %02d:%02d:%02d GMT\n", argv[1],
			mo, day, yy, hour, min, sec);
	} else
		FUNC2("%s\n", reply_string);
	verbose = overbose;
}