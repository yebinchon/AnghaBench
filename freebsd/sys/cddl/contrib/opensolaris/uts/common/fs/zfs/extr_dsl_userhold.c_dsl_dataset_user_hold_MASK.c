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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  minor_t ;
struct TYPE_3__ {int /*<<< orphan*/  dduha_chkholds; int /*<<< orphan*/  dduha_minor; int /*<<< orphan*/ * dduha_errlist; int /*<<< orphan*/ * dduha_holds; } ;
typedef  TYPE_1__ dsl_dataset_user_hold_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_SPACE_CHECK_RESERVED ; 
 int /*<<< orphan*/  dsl_dataset_user_hold_check ; 
 int /*<<< orphan*/  dsl_dataset_user_hold_sync ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(nvlist_t *holds, minor_t cleanup_minor, nvlist_t *errlist)
{
	dsl_dataset_user_hold_arg_t dduha;
	nvpair_t *pair;
	int ret;

	pair = FUNC4(holds, NULL);
	if (pair == NULL)
		return (0);

	dduha.dduha_holds = holds;
	dduha.dduha_chkholds = FUNC1();
	dduha.dduha_errlist = errlist;
	dduha.dduha_minor = cleanup_minor;

	ret = FUNC0(FUNC5(pair), dsl_dataset_user_hold_check,
	    dsl_dataset_user_hold_sync, &dduha,
	    FUNC3(holds), ZFS_SPACE_CHECK_RESERVED);
	FUNC2(dduha.dduha_chkholds);

	return (ret);
}