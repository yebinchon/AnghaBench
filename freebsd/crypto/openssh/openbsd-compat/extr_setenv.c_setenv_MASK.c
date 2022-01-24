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
 int /*<<< orphan*/  EINVAL ; 
 char* FUNC0 (char const*,int,int*) ; 
 char** environ ; 
 int /*<<< orphan*/  errno ; 
 char** lastenv ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char**,char**,size_t) ; 
 scalar_t__ FUNC3 (char**,int) ; 
 int FUNC4 (char const*) ; 

int
FUNC5(const char *name, const char *value, int rewrite)
{
	char *C, **P;
	const char *np;
	int l_value, offset = 0;

	for (np = name; *np && *np != '='; ++np)
		;
#ifdef notyet
	if (*np) {
		errno = EINVAL;
		return (-1);			/* has `=' in name */
	}
#endif

	l_value = FUNC4(value);
	if ((C = FUNC0(name, (int)(np - name), &offset)) != NULL) {
		int tmpoff = offset + 1;
		if (!rewrite)
			return (0);
#if 0 /* XXX - existing entry may not be writable */
		if (strlen(C) >= l_value) {	/* old larger; copy over */
			while ((*C++ = *value++))
				;
			return (0);
		}
#endif
		/* could be set multiple times */
		while (FUNC0(name, (int)(np - name), &tmpoff)) {
			for (P = &environ[tmpoff];; ++P)
				if (!(*P = *(P + 1)))
					break;
		}
	} else {					/* create new slot */
		size_t cnt;

		for (P = environ; *P != NULL; P++)
			;
		cnt = P - environ;
		P = (char **)FUNC3(lastenv, sizeof(char *) * (cnt + 2));
		if (!P)
			return (-1);
		if (lastenv != environ)
			FUNC2(P, environ, cnt * sizeof(char *));
		lastenv = environ = P;
		offset = cnt;
		environ[cnt + 1] = NULL;
	}
	if (!(environ[offset] =			/* name + `=' + value */
	    FUNC1((size_t)((int)(np - name) + l_value + 2))))
		return (-1);
	for (C = environ[offset]; (*C = *name++) && *C != '='; ++C)
		;
	for (*C++ = '='; (*C++ = *value++); )
		;
	return (0);
}