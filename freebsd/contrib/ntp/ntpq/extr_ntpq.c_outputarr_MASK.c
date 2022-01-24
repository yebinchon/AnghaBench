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
typedef  int /*<<< orphan*/  l_fp ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 size_t FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(
	FILE *fp,
	char *name,
	int narr,
	l_fp *lfp
	)
{
	char *bp;
	char *cp;
	size_t i;
	size_t len;
	char buf[256];

	bp = buf;
	/*
	 * Hack to align delay and offset values
	 */
	for (i = (int)FUNC2(name); i < 11; i++)
		*bp++ = ' ';

	for (i = narr; i > 0; i--) {
		if (i != (size_t)narr)
			*bp++ = ' ';
		cp = FUNC0(lfp, 2);
		len = FUNC2(cp);
		if (len > 7) {
			cp[7] = '\0';
			len = 7;
		}
		while (len < 7) {
			*bp++ = ' ';
			len++;
		}
		while (*cp != '\0')
		    *bp++ = *cp++;
		lfp++;
	}
	*bp = '\0';
	FUNC1(fp, name, buf);
}