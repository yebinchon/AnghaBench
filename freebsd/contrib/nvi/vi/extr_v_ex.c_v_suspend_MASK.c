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
typedef  int /*<<< orphan*/  VICMD ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  C_STOP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OOBLNO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC5(SCR *sp, VICMD *vp)
{
	EXCMD cmd;

	FUNC3(sp, &cmd, C_STOP, 0, OOBLNO, OOBLNO, 0);
	FUNC2(sp, &cmd, FUNC0("suspend"), FUNC1(FUNC0("suspend")));
	return (FUNC4(sp, vp, &cmd));
}