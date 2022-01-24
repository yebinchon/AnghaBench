#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* ip; int chassis; int geoslot; } ;
typedef  TYPE_1__ unit_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_CHASSIS ; 
 int MAX_GEOSLOT ; 
 int MAX_LINE_SIZE ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (char*,char*) ; 
 char* FUNC11 (char*,char*) ; 
 TYPE_1__** units ; 

int FUNC12(char *errbuf) {				/* returns: -1 = error, 0 = OK */
	FILE	*fp;
	char	buf[MAX_LINE_SIZE];
	char	*ptr, *ptr2;
	int		pos;
	int		chassis, geoslot;
	unit_t	*u;

	FUNC0();
	if ((fp = FUNC3("/etc/hosts", "r")) == NULL) {										/* try to open the hosts file and if it fails */
		FUNC6(errbuf, PCAP_ERRBUF_SIZE, "Cannot open '/etc/hosts' for reading.");	/* return the nohostsfile error response */
		return -1;
	}
	while (FUNC2(buf, MAX_LINE_SIZE-1, fp)) {			/* while looping over the file */

		pos = FUNC8(buf, "#\n\r");					/* find the first comment character or EOL */
		*(buf + pos) = '\0';							/* and clobber it and anything that follows it */

		pos = FUNC10(buf, " \t");						/* then find the first non-white space */
		if (pos == FUNC9(buf))							/* if there is nothing but white space on the line */
			continue;									/* ignore that empty line */
		ptr = buf + pos;								/* and skip over any of that leading whitespace */

		if ((ptr2 = FUNC11(ptr, "_I_")) == NULL)		/* skip any lines that don't have names that look like they belong to IOPs */
			continue;
		if (*(ptr2 + 4) != '_')							/* and skip other lines that have names that don't look like ACN components */
			continue;
		*(ptr + FUNC8(ptr, " \t")) = '\0';			/* null terminate the IP address so its a standalone string */

		chassis = *(ptr2 + 3) - '0';					/* extract the chassis number */
		geoslot = *(ptr2 + 5) - '0';					/* and geo-slot number */
		if (chassis < 1 || chassis > MAX_CHASSIS ||
			geoslot < 1 || geoslot > MAX_GEOSLOT) {		/* if the chassis and/or slot numbers appear to be bad... */
			FUNC6(errbuf, PCAP_ERRBUF_SIZE, "Invalid ACN name in '/etc/hosts'.");	/* warn the user */
			continue;																	/* and ignore the entry */
		}
		if ((ptr2 = (char *)FUNC4(FUNC9(ptr) + 1)) == NULL) {
			FUNC5(errbuf, PCAP_ERRBUF_SIZE,
			    errno, "malloc");
			continue;
		}
		FUNC7(ptr2, ptr);								/* copy the IP address into our malloc'ed memory */
		u = &units[chassis][geoslot];
		u->ip = ptr2;									/* and remember the whole shebang */
		u->chassis = chassis;
		u->geoslot = geoslot;
	}
	FUNC1(fp);
	if (*errbuf)	return -1;
	else			return 0;
}