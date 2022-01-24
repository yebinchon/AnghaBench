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
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUTPURE ; 
 int /*<<< orphan*/  STRnobeep ; 
 int /*<<< orphan*/  STRvisiblebell ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_bl ; 
 int /*<<< orphan*/  T_vb ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC7(void)
{				/* produce a sound */
    FUNC4 ();
    if (FUNC3(STRnobeep))
	return;

    if (FUNC1(T_vb) && FUNC3(STRvisiblebell))
	(void) FUNC6(FUNC2(T_vb), 1, PUTPURE);	/* visible bell */
    else if (FUNC1(T_bl))
	/* what termcap says we should use */
	(void) FUNC6(FUNC2(T_bl), 1, PUTPURE);
    else
	(void) FUNC5(FUNC0('\007'));	/* an ASCII bell; ^G */
}