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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int compile_time ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4(void)	/* try to print context around error */
{
	char *p, *q;
	int c;
	static int been_here = 0;
	extern char ebuf[], *ep;

	if (compile_time == 2 || compile_time == 0 || been_here++ > 0 || ebuf == ep)
		return;
	if (ebuf == ep)
		return;
	p = ep - 1;
	if (p > ebuf && *p == '\n')
		p--;
	for ( ; p > ebuf && *p != '\n' && *p != '\0'; p--)
		;
	while (*p == '\n')
		p++;
	FUNC1(stderr, " context is\n\t");
	for (q=ep-1; q>=p && *q!=' ' && *q!='\t' && *q!='\n'; q--)
		;
	for ( ; p < q; p++)
		if (*p)
			FUNC3(*p, stderr);
	FUNC1(stderr, " >>> ");
	for ( ; p < ep; p++)
		if (*p)
			FUNC3(*p, stderr);
	FUNC1(stderr, " <<< ");
	if (*ep)
		while ((c = FUNC2()) != '\n' && c != '\0' && c != EOF) {
			FUNC3(c, stderr);
			FUNC0(c);
		}
	FUNC3('\n', stderr);
	ep = ebuf;
}