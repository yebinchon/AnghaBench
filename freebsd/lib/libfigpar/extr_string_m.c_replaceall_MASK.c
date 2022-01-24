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
typedef  size_t uint32_t ;

/* Variables and functions */
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char*,char const*,size_t) ; 

int
FUNC5(char *source, const char *find, const char *replace)
{
	char *p;
	char *t;
	char *temp;
	size_t flen;
	size_t rlen;
	size_t slen;
	uint32_t n = 0;

	errno = 0; /* reset global error number */

	/* Check that we have non-null parameters */
	if (source == NULL)
		return (0);
	if (find == NULL)
		return (FUNC3(source));

	/* Cache the length of the strings */
	slen = FUNC3(source);
	flen = FUNC3(find);
	rlen = replace ? FUNC3(replace) : 0;

	/* Cases where no replacements need to be made */
	if (slen == 0 || flen == 0 || slen < flen)
		return (slen);

	/* If replace is longer than find, we'll need to create a temp copy */
	if (rlen > flen) {
		temp = FUNC1(slen + 1);
		if (temp == NULL) /* could not allocate memory */
			return (-1);
		FUNC2(temp, source, slen + 1);
	} else
		temp = source;

	/* Reconstruct the string with the replacements */
	p = source; t = temp; /* position elements */
 
	while (*t != '\0') {
		if (FUNC4(t, find, flen) == 0) {
			/* found an occurrence */
			for (n = 0; replace && replace[n]; n++)
				*p++ = replace[n];
			t += flen;
		} else
			*p++ = *t++; /* copy character and increment */
	}

	/* Terminate the string */
	*p = '\0';

	/* Free the temporary allocated memory */
	if (temp != source)
		FUNC0(temp);

	/* Return the length of the completed string */
	return (FUNC3(source));
}