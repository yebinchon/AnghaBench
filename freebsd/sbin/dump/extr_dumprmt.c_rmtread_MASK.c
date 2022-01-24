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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  rmtape ; 
 int FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

int
FUNC4(char *buf, int count)
{
	char line[30];
	int n, i, cc;

	(void)FUNC3(line, sizeof (line), "R%d\n", count);
	n = FUNC1("read", line);
	if (n < 0)
		/* rmtcall() properly sets errno for us on errors. */
		return (n);
	for (i = 0; i < n; i += cc) {
		cc = FUNC0(rmtape, buf+i, n - i);
		if (cc <= 0)
			FUNC2(0);
	}
	return (n);
}