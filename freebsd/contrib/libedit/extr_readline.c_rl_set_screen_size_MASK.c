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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EL_SETTC ; 
 int /*<<< orphan*/  e ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

void
FUNC2(int rows, int cols)
{
	char buf[64];
	(void)FUNC1(buf, sizeof(buf), "%d", rows);
	FUNC0(e, EL_SETTC, "li", buf, NULL);
	(void)FUNC1(buf, sizeof(buf), "%d", cols);
	FUNC0(e, EL_SETTC, "co", buf, NULL);
}