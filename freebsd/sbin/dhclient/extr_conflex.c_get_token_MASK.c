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
 scalar_t__ eol_token ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int lexchar ; 
 int lexline ; 
 int line ; 
 int lpos ; 
 int FUNC5 (int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 char* tval ; 

__attribute__((used)) static int
FUNC9(FILE *cfile)
{
	int		c, ttok;
	static char	tb[2];
	int		l, p;

	do {
		l = line;
		p = lpos;

		c = FUNC0(cfile);

		if (!(c == '\n' && eol_token) && FUNC2(c) && FUNC4(c))
			continue;
		if (c == '#') {
			FUNC8(cfile);
			continue;
		}
		if (c == '"') {
			lexline = l;
			lexchar = p;
			ttok = FUNC7(cfile);
			break;
		}
		if ((FUNC2(c) && FUNC3(c)) || c == '-') {
			lexline = l;
			lexchar = p;
			ttok = FUNC6(c, cfile);
			break;
		} else if (FUNC2(c) && FUNC1(c)) {
			lexline = l;
			lexchar = p;
			ttok = FUNC5(c, cfile);
			break;
		} else {
			lexline = l;
			lexchar = p;
			tb[0] = c;
			tb[1] = 0;
			tval = tb;
			ttok = c;
			break;
		}
	} while (1);
	return (ttok);
}