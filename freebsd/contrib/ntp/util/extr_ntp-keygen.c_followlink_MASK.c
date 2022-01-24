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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,char*,int) ; 

void
FUNC2(
	char *	fname,
	size_t	bufsiz
	)
{
	int len;

	FUNC0(bufsiz > 0);

	len = FUNC1(fname, fname, (int)bufsiz);
	if (len < 0 ) {
		fname[0] = '\0';
		return;
	}
	if (len > (int)bufsiz - 1)
		len = (int)bufsiz - 1;
	fname[len] = '\0';
}