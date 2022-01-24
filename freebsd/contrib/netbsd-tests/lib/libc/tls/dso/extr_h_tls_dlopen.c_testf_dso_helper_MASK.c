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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  getpid ; 
 int /*<<< orphan*/  local_var ; 
 int /*<<< orphan*/  optind ; 
 int var1 ; 
 int var2 ; 
 int /*<<< orphan*/ * var3 ; 

void
FUNC1(int x, int y)
{
	var1 = x;
	var2 = y;
	var3 = &optind;
	FUNC0(local_var, getpid);
}