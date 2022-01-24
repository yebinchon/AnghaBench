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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 

char *FUNC4(char *argv0)
{
	char *p, *q;
#ifdef HAVE___PROGNAME
	extern char *__progname;

	p = __progname;
#else
	if (argv0 == NULL)
		return ("unknown");	/* XXX */
	p = FUNC3(argv0, '/');
	if (p == NULL)
		p = argv0;
	else
		p++;
#endif
	if ((q = FUNC2(p)) == NULL) {
		FUNC1("strdup");
		FUNC0(1);
	}
	return q;
}