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
typedef  int /*<<< orphan*/  u_int ;
struct sshkey {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sshkey*,char**) ; 
 int /*<<< orphan*/  FUNC1 (struct sshkey*) ; 

int
FUNC2(char **cpp, u_int *bitsp, struct sshkey *ret)
{
	char *cp;
	int r;

	/* Skip leading whitespace. */
	for (cp = *cpp; *cp == ' ' || *cp == '\t'; cp++)
		;

	if ((r = FUNC0(ret, &cp)) != 0)
		return 0;

	/* Skip trailing whitespace. */
	for (; *cp == ' ' || *cp == '\t'; cp++)
		;

	/* Return results. */
	*cpp = cp;
	if (bitsp != NULL)
		*bitsp = FUNC1(ret);
	return 1;
}