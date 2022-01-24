#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_7__ {struct TYPE_7__* dd_parent; int /*<<< orphan*/  dd_lock; } ;
typedef  TYPE_1__ dsl_dir_t ;
struct TYPE_8__ {int /*<<< orphan*/  dd_used_bytes; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64_t
FUNC4(dsl_dir_t *dd, int64_t delta, dsl_dir_t *ancestor)
{
	if (dd == ancestor)
		return (delta);

	FUNC1(&dd->dd_lock);
	delta = FUNC3(dd, FUNC0(dd)->dd_used_bytes, delta);
	FUNC2(&dd->dd_lock);
	return (FUNC4(dd->dd_parent, delta, ancestor));
}