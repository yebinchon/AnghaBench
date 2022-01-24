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
struct winsize {int ws_col; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 

__attribute__((used)) static int
FUNC3(void)
{
	int columns;
	char *cp;
	struct winsize ws;

	columns = 0;
	if (FUNC2(0, TIOCGWINSZ, &ws) != -1)
		columns = ws.ws_col;
	if (columns == 0 && (cp = FUNC1("COLUMNS")))
		columns = FUNC0(cp);
	if (columns == 0)
		columns = 80;	/* last resort */
	return (columns);
}