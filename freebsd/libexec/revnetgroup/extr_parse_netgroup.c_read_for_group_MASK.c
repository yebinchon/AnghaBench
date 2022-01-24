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
struct linelist {char* l_groupname; char* l_line; struct linelist* l_next; scalar_t__ l_parsed; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  gtable ; 
 struct linelist* linehead ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  netf ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static struct linelist *
FUNC8(char *group)
{
	char *pos, *spos, *linep = NULL, *olinep = NULL;
	int len, olen;
	int cont;
	struct linelist *lp;
	char line[LINSIZ + 1];
	char *data = NULL;

	data = FUNC3 (gtable, group);
	FUNC5(line, "%s %s", group, data);
	pos = (char *)&line;
#ifdef CANT_HAPPEN
	if (*pos == '#')
		continue;
#endif
	while (*pos == ' ' || *pos == '\t')
		pos++;
	spos = pos;
	while (*pos != ' ' && *pos != '\t' && *pos != '\n' &&
		*pos != '\0')
		pos++;
	len = pos - spos;
	while (*pos == ' ' || *pos == '\t')
		pos++;
	if (*pos != '\n' && *pos != '\0') {
		lp = (struct linelist *)FUNC4(sizeof (*lp));
		lp->l_parsed = 0;
		lp->l_groupname = (char *)FUNC4(len + 1);
		FUNC0(spos, lp->l_groupname, len);
		*(lp->l_groupname + len) = '\0';
		len = FUNC7(pos);
		olen = 0;
			/*
			 * Loop around handling line continuations.
			 */
			do {
				if (*(pos + len - 1) == '\n')
					len--;
				if (*(pos + len - 1) == '\\') {
					len--;
					cont = 1;
				} else
					cont = 0;
				if (len > 0) {
					linep = (char *)FUNC4(olen + len + 1);
					if (olen > 0) {
						FUNC0(olinep, linep, olen);
						FUNC2(olinep);
					}
					FUNC0(pos, linep + olen, len);
					olen += len;
					*(linep + olen) = '\0';
					olinep = linep;
				}
#ifdef CANT_HAPPEN
				if (cont) {
					if (fgets(line, LINSIZ, netf)) {
						pos = line;
						len = strlen(pos);
					} else
						cont = 0;
				}
#endif
			} while (cont);
		lp->l_line = linep;
		lp->l_next = linehead;
		linehead = lp;
#ifdef CANT_HAPPEN
		/*
		 * If this is the one we wanted, we are done.
		 */
		if (!strcmp(lp->l_groupname, group))
#endif
			return (lp);
	}
	return ((struct linelist *)0);
}