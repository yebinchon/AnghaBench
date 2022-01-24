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
typedef  int /*<<< orphan*/  tbuf ;
struct dumpdates {scalar_t__ dd_ddate; int /*<<< orphan*/  dd_level; int /*<<< orphan*/  dd_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 char* FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  dumpdates ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct dumpdates*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ recno ; 

__attribute__((used)) static int
FUNC4(FILE *df, struct dumpdates *ddatep)
{
	char tbuf[BUFSIZ];

	recno = 0;
	if ( (FUNC1(tbuf, sizeof (tbuf), df)) != tbuf)
		return(-1);
	recno++;
	if (FUNC2(ddatep, tbuf) < 0)
		FUNC3("Unknown intermediate format in %s, line %d\n",
			dumpdates, recno);

#ifdef FDEBUG
	msg("getrecord: %s %d %s", ddatep->dd_name, ddatep->dd_level,
	    ddatep->dd_ddate == 0 ? "the epoch\n" : ctime(&ddatep->dd_ddate));
#endif
	return(0);
}