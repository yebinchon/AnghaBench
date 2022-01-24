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
struct TYPE_3__ {int /*<<< orphan*/ * ddpa_clone; int /*<<< orphan*/ * origin_origin; int /*<<< orphan*/  origin_snaps; int /*<<< orphan*/  clone_snaps; int /*<<< orphan*/  shared_snaps; } ;
typedef  TYPE_1__ dsl_dataset_promote_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void
FUNC2(dsl_dataset_promote_arg_t *ddpa, void *tag)
{
	FUNC1(&ddpa->shared_snaps, tag);
	FUNC1(&ddpa->clone_snaps, tag);
	FUNC1(&ddpa->origin_snaps, tag);
	if (ddpa->origin_origin != NULL)
		FUNC0(ddpa->origin_origin, tag);
	FUNC0(ddpa->ddpa_clone, tag);
}