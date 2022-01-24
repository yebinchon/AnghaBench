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
 int /*<<< orphan*/  cbuf ; 
 int hasyyerrored ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char) ; 

void
FUNC2(char *s)
{
	char *cp;

	if (hasyyerrored)
	    return;

	if ((cp = FUNC1(cbuf,'\n')))
		*cp = '\0';
	FUNC0(500, "'%s': command not understood.", cbuf);
	hasyyerrored = 1;
}