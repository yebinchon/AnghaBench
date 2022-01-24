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
typedef  int /*<<< orphan*/  GS ;

/* Variables and functions */
 int /*<<< orphan*/  GO_TERM ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* XTERM_RENAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC3(GS *gp, char *name)
{
/* X11 xterm escape sequence to rename the icon/window. */
#define	XTERM_RENAME	"\033]0;%s\007"

	(void)FUNC2(XTERM_RENAME, name == NULL ? FUNC0(gp, GO_TERM) : name);
	(void)FUNC1(stdout);
#undef XTERM_RENAME
}