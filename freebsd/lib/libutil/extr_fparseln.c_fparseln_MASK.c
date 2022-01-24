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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FPARSELN_UNESCALL ; 
 int FPARSELN_UNESCCOMM ; 
 int FPARSELN_UNESCCONT ; 
 int FPARSELN_UNESCESC ; 
 int FPARSELN_UNESCREST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 char* FUNC5 (char*,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 
 size_t FUNC7 (char*) ; 

char *
FUNC8(FILE *fp, size_t *size, size_t *lineno, const char str[3], int flags)
{
	static const char dstr[3] = { '\\', '\\', '#' };

	size_t	s, len;
	char   *buf;
	char   *ptr, *cp;
	int	cnt;
	char	esc, con, nl, com;

#if 0
	_DIAGASSERT(fp != NULL);
#endif

	len = 0;
	buf = NULL;
	cnt = 1;

	if (str == NULL)
		str = dstr;

	esc = str[0];
	con = str[1];
	com = str[2];
	/*
	 * XXX: it would be cool to be able to specify the newline character,
	 * but unfortunately, fgetln does not let us
	 */
	nl  = '\n';

	while (cnt) {
		cnt = 0;

		if (lineno)
			(*lineno)++;

		if ((ptr = FUNC1(fp, &s)) == NULL)
			break;

		if (s && com) {		/* Check and eliminate comments */
			for (cp = ptr; cp < ptr + s; cp++)
				if (*cp == com && !FUNC3(ptr, cp, esc)) {
					s = cp - ptr;
					cnt = s == 0 && buf == NULL;
					break;
				}
		}

		if (s && nl) { 		/* Check and eliminate newlines */
			cp = &ptr[s - 1];

			if (*cp == nl)
				s--;	/* forget newline */
		}

		if (s && con) {		/* Check and eliminate continuations */
			cp = &ptr[s - 1];

			if (*cp == con && !FUNC3(ptr, cp, esc)) {
				s--;	/* forget continuation char */
				cnt = 1;
			}
		}

		if (s == 0) {
			/*
			 * nothing to add, skip realloc except in case
			 * we need a minimal buf to return an empty line
			 */
			if (cnt || buf != NULL)
				continue;
		}

		if ((cp = FUNC5(buf, len + s + 1)) == NULL) {
			FUNC2(buf);
			return NULL;
		}
		buf = cp;

		(void) FUNC4(buf + len, ptr, s);
		len += s;
		buf[len] = '\0';
	}

	if ((flags & FPARSELN_UNESCALL) != 0 && esc && buf != NULL &&
	    FUNC6(buf, esc) != NULL) {
		ptr = cp = buf;
		while (cp[0] != '\0') {
			int skipesc;

			while (cp[0] != '\0' && cp[0] != esc)
				*ptr++ = *cp++;
			if (cp[0] == '\0' || cp[1] == '\0')
				break;

			skipesc = 0;
			if (cp[1] == com)
				skipesc += (flags & FPARSELN_UNESCCOMM);
			if (cp[1] == con)
				skipesc += (flags & FPARSELN_UNESCCONT);
			if (cp[1] == esc)
				skipesc += (flags & FPARSELN_UNESCESC);
			if (cp[1] != com && cp[1] != con && cp[1] != esc)
				skipesc = (flags & FPARSELN_UNESCREST);

			if (skipesc)
				cp++;
			else
				*ptr++ = *cp++;
			*ptr++ = *cp++;
		}
		*ptr = '\0';
		len = FUNC7(buf);
	}

	if (size)
		*size = len;
	return buf;
}