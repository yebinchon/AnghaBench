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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  EX_NOINPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 char* FUNC6 (char*,char) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(const char *filename)
{
	FILE *file;
	char line[BUFSIZ], *p, *pq, *pdq;
	int warncount = 0, lineno = 0;

	file = FUNC3(filename, "r");
	if (file == NULL)
		FUNC0(EX_NOINPUT, "%s", filename);
	while (FUNC2(line, sizeof(line), file) != NULL) {
		lineno++;
		p = line;
		pq = FUNC6(line, '\'');
		pdq = FUNC6(line, '\"');
		/* Replace the first # with \0. */
		while((p = FUNC6(p, '#')) != NULL) {
			if (pq != NULL && p > pq) {
				if ((p = FUNC6(pq+1, '\'')) != NULL)
					*(++p) = '\0';
				break;
			} else if (pdq != NULL && p > pdq) {
				if ((p = FUNC6(pdq+1, '\"')) != NULL)
					*(++p) = '\0';
				break;
			} else if (p == line || *(p-1) != '\\') {
				*p = '\0';
				break;
			}
			p++;
		}
		/* Trim spaces */
		p = line + FUNC7(line) - 1;
		while (p >= line && FUNC4((int)*p)) {
			*p = '\0';
			p--;
		}
		p = line;
		while (FUNC4((int)*p))
			p++;
		if (*p == '\0')
			continue;
		else
			warncount += FUNC5(p, lineno);
	}
	FUNC1(file);

	return (warncount);
}