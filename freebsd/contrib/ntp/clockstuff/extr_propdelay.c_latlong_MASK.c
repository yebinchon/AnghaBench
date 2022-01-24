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
 double FUNC0 (char*) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,double) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static double
FUNC3(
	char *str,
	int islat
	)
{
	register char *cp;
	register char *bp;
	double arg;
	double divby;
	int isneg;
	char buf[32];
	char *colon;

	if (islat) {
		/*
		 * Must be north or south
		 */
		if (*str == 'N' || *str == 'n')
		    isneg = 0;
		else if (*str == 'S' || *str == 's')
		    isneg = 1;
		else
		    isneg = -1;
	} else {
		/*
		 * East is positive, west is negative
		 */
		if (*str == 'E' || *str == 'e')
		    isneg = 0;
		else if (*str == 'W' || *str == 'w')
		    isneg = 1;
		else
		    isneg = -1;
	}

	if (isneg >= 0)
	    str++;

	colon = FUNC2(str, ':');
	if (colon != NULL) {
		/*
		 * in hhh:mm:ss form
		 */
		cp = str;
		bp = buf;
		while (cp < colon)
		    *bp++ = *cp++;
		*bp = '\0';
		cp++;
		arg = FUNC0(buf);
		divby = 60.0;
		colon = FUNC2(cp, ':');
		if (colon != NULL) {
			bp = buf;
			while (cp < colon)
			    *bp++ = *cp++;
			*bp = '\0';
			cp++;
			arg += FUNC0(buf) / divby;
			divby = 3600.0;
		}
		if (*cp != '\0')
		    arg += FUNC0(cp) / divby;
	} else {
		arg = FUNC0(str);
	}

	if (isneg == 1)
	    arg = -arg;

	if (debug > 2)
	    (void) FUNC1("latitude/longitude %s = %g\n", str, arg);

	return arg;
}