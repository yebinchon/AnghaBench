#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ zl_suspend; int /*<<< orphan*/  zl_lock; } ;
typedef  TYPE_1__ zilog_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  suspend_tag ; 

void
FUNC7(void *cookie)
{
	objset_t *os = cookie;
	zilog_t *zilog = FUNC2(os);

	FUNC5(&zilog->zl_lock);
	FUNC0(zilog->zl_suspend != 0);
	zilog->zl_suspend--;
	FUNC6(&zilog->zl_lock);
	FUNC3(FUNC1(os), suspend_tag);
	FUNC4(FUNC1(os), suspend_tag);
}