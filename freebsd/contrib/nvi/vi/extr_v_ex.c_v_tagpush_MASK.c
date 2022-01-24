#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VICMD ;
struct TYPE_2__ {int /*<<< orphan*/  keyw; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  EXCMD ;

/* Variables and functions */
 int /*<<< orphan*/  C_TAG ; 
 int /*<<< orphan*/  OOBLNO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC5(SCR *sp, VICMD *vp)
{
	EXCMD cmd;

	FUNC3(sp, &cmd, C_TAG, 0, OOBLNO, 0, 0);
	FUNC2(sp, &cmd, FUNC1(sp)->keyw, FUNC0(FUNC1(sp)->keyw) + 1);
	return (FUNC4(sp, vp, &cmd));
}