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
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  EXCMD ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  C_TAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OOBLNO ; 
 int /*<<< orphan*/  SC_SCR_CENTER ; 
 int /*<<< orphan*/  SC_SCR_TOP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC6(SCR *sp, CHAR_T *tagarg)
{
	EXCMD cmd;

	/* Build an argument for the ex :tag command. */
	FUNC4(sp, &cmd, C_TAG, 0, OOBLNO, OOBLNO, 0);
	FUNC3(sp, &cmd, tagarg, FUNC2(tagarg));

	/*
	 * XXX
	 * Historic vi went ahead and created a temporary file when it failed
	 * to find the tag.  We match historic practice, but don't distinguish
	 * between real error and failure to find the tag.
	 */
	if (FUNC5(sp, &cmd))
		return (0);

	/* Display tags in the center of the screen. */
	FUNC0(sp, SC_SCR_TOP);
	FUNC1(sp, SC_SCR_CENTER);

	return (0);
}