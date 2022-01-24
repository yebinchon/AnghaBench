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
struct winsize {scalar_t__ ws_col; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 int /*<<< orphan*/  ttyout ; 
 int ttywidth ; 

void
FUNC2(int a)
{
	struct winsize winsize;
	int oerrno = errno;

	if (FUNC1(FUNC0(ttyout), TIOCGWINSZ, &winsize) != -1 &&
	    winsize.ws_col != 0)
		ttywidth = winsize.ws_col;
	else
		ttywidth = 80;
	errno = oerrno;
}