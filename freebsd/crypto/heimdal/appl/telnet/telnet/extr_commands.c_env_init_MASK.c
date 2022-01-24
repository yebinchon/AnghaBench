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
struct env_lst {char* value; scalar_t__ export; } ;
struct addrinfo {int /*<<< orphan*/ * ai_canonname; struct addrinfo* ai_next; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AI_CANONNAME ; 
 int FUNC0 (char**,char*,char*,char*) ; 
 struct env_lst* FUNC1 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 struct env_lst* FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 char** environ ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 

void
FUNC13(void)
{
	char **epp, *cp;
	struct env_lst *ep;

	for (epp = environ; *epp; epp++) {
		if ((cp = FUNC10(*epp, '='))) {
			*cp = '\0';
			ep = FUNC1((unsigned char *)*epp,
					(unsigned char *)cp+1);
			ep->export = 0;
			*cp = '=';
		}
	}
	/*
	 * Special case for DISPLAY variable.  If it is ":0.0" or
	 * "unix:0.0", we have to get rid of "unix" and insert our
	 * hostname.
	 */
	if ((ep = FUNC3((unsigned char*)"DISPLAY"))
	    && (*ep->value == ':'
	    || FUNC12((char *)ep->value, "unix:", 5) == 0)) {
		char hbuf[256+1];
		char *cp2 = FUNC10((char *)ep->value, ':');
		int error;

		/* XXX - should be k_gethostname? */
		FUNC8(hbuf, 256);
		hbuf[256] = '\0';

		/* If this is not the full name, try to get it via DNS */
		if (FUNC10(hbuf, '.') == 0) {
			struct addrinfo hints, *ai, *a;

			FUNC9 (&hints, 0, sizeof(hints));
			hints.ai_flags = AI_CANONNAME;

			error = FUNC7 (hbuf, NULL, &hints, &ai);
			if (error == 0) {
				for (a = ai; a != NULL; a = a->ai_next)
					if (a->ai_canonname != NULL) {
						FUNC11 (hbuf,
							 ai->ai_canonname,
							 256);
						break;
					}
				FUNC6 (ai);
			}
		}

		error = FUNC0 (&cp, "%s%s", hbuf, cp2);
		if (error != -1) {
		    FUNC5 (ep->value);
		    ep->value = (unsigned char *)cp;
		}
	}
	/*
	 * If USER is not defined, but LOGNAME is, then add
	 * USER with the value from LOGNAME.  By default, we
	 * don't export the USER variable.
	 */
	if ((FUNC3((unsigned char*)"USER") == NULL) &&
	    (ep = FUNC3((unsigned char*)"LOGNAME"))) {
		FUNC1((unsigned char *)"USER", ep->value);
		FUNC4((unsigned char *)"USER");
	}
	FUNC2((unsigned char *)"DISPLAY");
	FUNC2((unsigned char *)"PRINTER");
	FUNC2((unsigned char *)"XAUTHORITY");
}