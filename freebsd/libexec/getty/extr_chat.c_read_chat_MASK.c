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
 int /*<<< orphan*/  PAUSE_CH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (unsigned char**,int,int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 unsigned char* FUNC5 (char*,char) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static char **
FUNC7(char **chatstr)
{
	char *str = *chatstr;
	char **res = NULL;

	if (str != NULL) {
		char *tmp = NULL;
		int l;

		if ((l=FUNC4(str)) > 0 && (tmp=FUNC2(l + 1)) != NULL &&
		    (res=FUNC2(((l + 1) / 2 + 1) * sizeof(char *))) != NULL) {
			static char ws[] = " \t";
			char * p;

			for (l = 0, p = FUNC6(FUNC3(tmp, str), ws);
			     p != NULL;
			     p = FUNC6(NULL, ws))
			{
				unsigned char *q, *r;

				/* Read escapes */
				for (q = r = (unsigned char *)p; *r; ++q)
				{
					if (*q == '\\')
					{
						/* handle special escapes */
						switch (*++q)
						{
						case 'a': /* bell */
							*r++ = '\a';
							break;
						case 'r': /* cr */
							*r++ = '\r';
							break;
						case 'n': /* nl */
							*r++ = '\n';
							break;
						case 'f': /* ff */
							*r++ = '\f';
							break;
						case 'b': /* bs */
							*r++ = '\b';
							break;
						case 'e': /* esc */
							*r++ = 27;
							break;
						case 't': /* tab */
							*r++ = '\t';
							break;
						case 'p': /* pause */
							*r++ = PAUSE_CH;
							break;
						case 's':
						case 'S': /* space */
							*r++ = ' ';
							break;
						case 'x': /* hexdigit */
							++q;
							*r++ = FUNC1(&q, 16, 2);
							--q;
							break;
						case '0': /* octal */
							++q;
							*r++ = FUNC1(&q, 8, 3);
							--q;
							break;
						default: /* literal */
							*r++ = *q;
							break;
						case 0: /* not past eos */
							--q;
							break;
						}
					} else {
						/* copy standard character */
						*r++ = *q;
					}
				}

				/* Remove surrounding quotes, if any
				 */
				if (*p == '"' || *p == '\'') {
					q = FUNC5(p+1, *p);
					if (q != NULL && *q == *p && q[1] == '\0') {
						*q = '\0';
						p++;
					}
				}

				res[l++] = p;
			}
			res[l] = NULL;
			*chatstr = tmp;
			return res;
		}
		FUNC0(tmp);
	}
	return res;
}