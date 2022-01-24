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

/* Variables and functions */
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *) ; 

int
FUNC4(
	char *str,
	l_fp *lfp
	)
{
	char *cp;
	char buf[30];
	size_t b;

	/*
	 * If it starts with a 0x, decode as hex.
	 */
	if (*str == '0' && (*(str+1) == 'x' || *(str+1) == 'X'))
		return FUNC2(str+2, lfp);

	/*
	 * If it starts with a '"', try it as an RT-11 date.
	 */
	if (*str == '"') {
		cp = str + 1;
		b = 0;
		while ('"' != *cp && '\0' != *cp &&
		       b < FUNC0(buf) - 1)
			buf[b++] = *cp++;
		buf[b] = '\0';
		return FUNC3(buf, lfp);
	}

	/*
	 * Might still be hex.  Check out the first character.  Talk
	 * about heuristics!
	 */
	if ((*str >= 'A' && *str <= 'F') || (*str >= 'a' && *str <= 'f'))
		return FUNC2(str, lfp);

	/*
	 * Try it as a decimal.  If this fails, try as an unquoted
	 * RT-11 date.  This code should go away eventually.
	 */
	if (FUNC1(str, lfp))
		return 1;

	return FUNC3(str, lfp);
}