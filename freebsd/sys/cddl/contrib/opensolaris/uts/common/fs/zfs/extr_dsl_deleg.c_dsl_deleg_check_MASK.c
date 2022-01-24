#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsl_dir_t ;
struct TYPE_4__ {int /*<<< orphan*/  dda_name; } ;
typedef  TYPE_1__ dsl_deleg_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_5__ {int /*<<< orphan*/  dp_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_VERSION_DELEGATED_PERMS ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void *arg, dmu_tx_t *tx)
{
	dsl_deleg_arg_t *dda = arg;
	dsl_dir_t *dd;
	int error;

	if (FUNC4(FUNC1(tx)->dp_spa) <
	    SPA_VERSION_DELEGATED_PERMS) {
		return (FUNC0(ENOTSUP));
	}

	error = FUNC2(FUNC1(tx), dda->dda_name, FTAG, &dd, NULL);
	if (error == 0)
		FUNC3(dd, FTAG);
	return (error);
}