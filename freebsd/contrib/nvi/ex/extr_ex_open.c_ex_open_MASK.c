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

/* Variables and functions */
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

int
FUNC2(SCR *sp, EXCMD *cmdp)
{
	/* If open option off, disallow open command. */
	if (!FUNC0(sp, O_OPEN)) {
		FUNC1(sp, M_ERR,
	    "140|The open command requires that the open option be set");
		return (1);
	}

	FUNC1(sp, M_ERR, "141|The open command is not yet implemented");
	return (1);
}