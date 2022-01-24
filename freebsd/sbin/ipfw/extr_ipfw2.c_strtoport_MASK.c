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
struct servent {int /*<<< orphan*/  s_port; } ;
struct protoent {int /*<<< orphan*/ * p_name; } ;

/* Variables and functions */
 int IPPROTO_ETHERTYPE ; 
 int /*<<< orphan*/  ether_types ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct protoent* FUNC1 (int) ; 
 struct servent* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC10(char *s, char **end, int base, int proto)
{
	char *p, *buf;
	char *s1;
	int i;

	*end = s;		/* default - not found */
	if (*s == '\0')
		return 0;	/* not found */

	if (FUNC4(*s))
		return FUNC9(s, end, base);

	/*
	 * find separator. '\\' escapes the next char.
	 */
	for (s1 = s; *s1 && (FUNC3(*s1) || *s1 == '\\' ||
	    *s1 == '_' || *s1 == '.') ; s1++)
		if (*s1 == '\\' && s1[1] != '\0')
			s1++;

	buf = FUNC7(s1 - s + 1, 1);

	/*
	 * copy into a buffer skipping backslashes
	 */
	for (p = s, i = 0; p != s1 ; p++)
		if (*p != '\\')
			buf[i++] = *p;
	buf[i++] = '\0';

	if (proto == IPPROTO_ETHERTYPE) {
		i = FUNC5(ether_types, buf);
		FUNC0(buf);
		if (i != -1) {	/* found */
			*end = s1;
			return i;
		}
	} else {
		struct protoent *pe = NULL;
		struct servent *se;

		if (proto != 0)
			pe = FUNC1(proto);
		FUNC8(1);
		se = FUNC2(buf, pe ? pe->p_name : NULL);
		FUNC0(buf);
		if (se != NULL) {
			*end = s1;
			return FUNC6(se->s_port);
		}
	}
	return 0;	/* not found */
}