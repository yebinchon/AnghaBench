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
struct passwd {int /*<<< orphan*/  pw_uid; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 char* cr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct passwd* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (unsigned char) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (unsigned char*,char*,int) ; 

__attribute__((used)) static void
FUNC13(FILE *tp, char user[], char file[], off_t offset)
{
	unsigned char *cp, ch;
	FILE *fi;
	int linecnt, charcnt, inheader;
	struct passwd *p;
	unsigned char line[BUFSIZ];

	/* Set effective uid to user in case mail drop is on nfs */
	if ((p = FUNC7(user)) != NULL)
		(void) FUNC11(p->pw_uid);

	if ((fi = FUNC2(file, "r")) == NULL)
		return;

	(void)FUNC6(fi, offset, SEEK_CUR);
	/*
	 * Print the first 7 lines or 560 characters of the new mail
	 * (whichever comes first).  Skip header crap other than
	 * From, Subject, To, and Date.
	 */
	linecnt = 7;
	charcnt = 560;
	inheader = 1;
	while (FUNC1(line, sizeof(line), fi) != NULL) {
		if (inheader) {
			if (line[0] == '\n') {
				inheader = 0;
				continue;
			}
			if (line[0] == ' ' || line[0] == '\t' ||
			    (FUNC12(line, "From:", 5) &&
			    FUNC12(line, "Subject:", 8)))
				continue;
		}
		if (linecnt <= 0 || charcnt <= 0) {
			(void)FUNC3(tp, "...more...%s", cr);
			(void)FUNC0(fi);
			return;
		}
		/* strip weird stuff so can't trojan horse stupid terminals */
		for (cp = line; (ch = *cp) && ch != '\n'; ++cp, --charcnt) {
			/* disable upper controls and enable all other
			   8bit codes due to lack of locale knowledge
			 */
			if (((ch & 0x80) && ch < 0xA0) ||
			    (!(ch & 0x80) && !FUNC9(ch) &&
			     !FUNC10(ch) && ch != '\a' && ch != '\b')
			   ) {
				if (ch & 0x80) {
					ch &= ~0x80;
					(void)FUNC5("M-", tp);
				}
				if (FUNC8(ch)) {
					ch ^= 0x40;
					(void)FUNC4('^', tp);
				}
			}
			(void)FUNC4(ch, tp);
		}
		(void)FUNC5(cr, tp);
		--linecnt;
	}
	(void)FUNC3(tp, "----%s\n", cr);
	(void)FUNC0(fi);
}