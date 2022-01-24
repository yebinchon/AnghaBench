#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* ms_group; int /*<<< orphan*/  ms_lock; } ;
typedef  TYPE_1__ metaslab_t ;
struct TYPE_9__ {int /*<<< orphan*/  mg_lock; int /*<<< orphan*/  mg_metaslab_tree; } ;
typedef  TYPE_2__ metaslab_group_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(metaslab_group_t *mg, metaslab_t *msp)
{
	FUNC3(&msp->ms_lock);
	FUNC2(mg, msp);
	FUNC4(&msp->ms_lock);

	FUNC3(&mg->mg_lock);
	FUNC0(msp->ms_group == mg);
	FUNC1(&mg->mg_metaslab_tree, msp);
	msp->ms_group = NULL;
	FUNC4(&mg->mg_lock);
}