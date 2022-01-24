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
typedef  size_t u_int ;
struct winsize {size_t ws_col; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 size_t FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(char **list, u_int len)
{
	u_int y, m = 0, width = 80, columns = 1, colspace = 0, llen;
	struct winsize ws;
	char *tmp;

	/* Count entries for sort and find longest */
	for (y = 0; list[y]; y++)
		m = FUNC0(m, FUNC6(list[y]));

	if (FUNC3(FUNC2(stdin), TIOCGWINSZ, &ws) != -1)
		width = ws.ws_col;

	m = m > len ? m - len : 0;
	columns = width / (m + 2);
	columns = FUNC0(columns, 1);
	colspace = width / columns;
	colspace = FUNC1(colspace, width);

	FUNC5("\n");
	m = 1;
	for (y = 0; list[y]; y++) {
		llen = FUNC6(list[y]);
		tmp = llen > len ? list[y] + len : "";
		FUNC4("%-*s", colspace, tmp);
		if (m >= columns) {
			FUNC5("\n");
			m = 1;
		} else
			m++;
	}
	FUNC5("\n");
}