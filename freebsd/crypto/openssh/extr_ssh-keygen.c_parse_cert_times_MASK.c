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
typedef  int u_int64_t ;
typedef  int time_t ;
typedef  int int64_t ;

/* Variables and functions */
 int cert_valid_from ; 
 int cert_valid_to ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int*) ; 
 int FUNC4 (char*,int) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(char *timespec)
{
	char *from, *to;
	time_t now = FUNC7(NULL);
	int64_t secs;

	/* +timespec relative to now */
	if (*timespec == '+' && FUNC5(timespec, ':') == NULL) {
		if ((secs = FUNC0(timespec + 1)) == -1)
			FUNC1("Invalid relative certificate life %s", timespec);
		cert_valid_to = now + secs;
		/*
		 * Backdate certificate one minute to avoid problems on hosts
		 * with poorly-synchronised clocks.
		 */
		cert_valid_from = ((now - 59)/ 60) * 60;
		return;
	}

	/*
	 * from:to, where
	 * from := [+-]timespec | YYYYMMDD | YYYYMMDDHHMMSS | "always"
	 *   to := [+-]timespec | YYYYMMDD | YYYYMMDDHHMMSS | "forever"
	 */
	from = FUNC8(timespec);
	to = FUNC5(from, ':');
	if (to == NULL || from == to || *(to + 1) == '\0')
		FUNC1("Invalid certificate life specification %s", timespec);
	*to++ = '\0';

	if (*from == '-' || *from == '+')
		cert_valid_from = FUNC4(from, now);
	else if (FUNC6(from, "always") == 0)
		cert_valid_from = 0;
	else if (FUNC3(from, &cert_valid_from) != 0)
		FUNC1("Invalid from time \"%s\"", from);

	if (*to == '-' || *to == '+')
		cert_valid_to = FUNC4(to, now);
	else if (FUNC6(to, "forever") == 0)
		cert_valid_to = ~(u_int64_t)0;
	else if (FUNC3(to, &cert_valid_to) != 0)
		FUNC1("Invalid to time \"%s\"", to);

	if (cert_valid_to <= cert_valid_from)
		FUNC1("Empty certificate validity interval");
	FUNC2(from);
}