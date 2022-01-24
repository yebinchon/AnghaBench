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
 int /*<<< orphan*/  CODESET ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int
FUNC2(void) {
	char	*loc;

	loc = FUNC0(CODESET);
	return FUNC1(loc, "UTF-8") != 0 &&
	    FUNC1(loc, "US-ASCII") != 0 &&		/* OpenBSD */
	    FUNC1(loc, "ANSI_X3.4-1968") != 0 &&	/* Linux */
	    FUNC1(loc, "ISO8859-1") != 0 &&		/* AIX */
	    FUNC1(loc, "646") != 0 &&			/* Solaris, NetBSD */
	    FUNC1(loc, "") != 0;			/* Solaris 6 */
}