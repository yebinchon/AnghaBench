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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * socketmgr ; 
 int /*<<< orphan*/ * taskmgr ; 
 int /*<<< orphan*/ * timermgr ; 

__attribute__((used)) static void
FUNC3() {
	if (socketmgr != NULL)
		FUNC0(&socketmgr);
	if (taskmgr != NULL)
		FUNC1(&taskmgr);
	if (timermgr != NULL)
		FUNC2(&timermgr);
}