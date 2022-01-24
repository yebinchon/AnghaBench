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
struct disklabel {int dummy; } ;
typedef  int /*<<< orphan*/  label ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct disklabel*) ; 
 int FUNC8 () ; 
 struct disklabel lab ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  tmpfil ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 () ; 

__attribute__((used)) static int
FUNC14(void)
{
	int c, fd;
	struct disklabel label;
	FILE *fp;

	if ((fd = FUNC9(tmpfil)) == -1 ||
	    (fp = FUNC4(fd, "w")) == NULL) {
		FUNC12("can't create %s", tmpfil);
		return (1);
	}
	FUNC1(fp, NULL);
	FUNC3(fp);
	for (;;) {
		if (!FUNC2())
			break;
		fp = FUNC6(tmpfil, "r");
		if (fp == NULL) {
			FUNC12("can't reopen %s for reading", tmpfil);
			break;
		}
		FUNC0((char *)&label, sizeof(label));
		c = FUNC7(fp, &label);
		FUNC3(fp);
		if (c) {
			lab = label;
			if (FUNC13() == 0) {
				(void) FUNC11(tmpfil);
				return (0);
			}
		}
		FUNC10("re-edit the label? [y]: ");
		FUNC5(stdout);
		c = FUNC8();
		if (c != EOF && c != (int)'\n')
			while (FUNC8() != (int)'\n')
				;
		if  (c == (int)'n')
			break;
	}
	(void) FUNC11(tmpfil);
	return (1);
}