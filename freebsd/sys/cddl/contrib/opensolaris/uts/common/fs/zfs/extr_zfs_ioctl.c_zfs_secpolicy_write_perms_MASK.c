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
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(const char *name, const char *perm, cred_t *cr)
{
	int error;
	dsl_dataset_t *ds;
	dsl_pool_t *dp;

	/*
	 * First do a quick check for root in the global zone, which
	 * is allowed to do all write_perms.  This ensures that zfs_ioc_*
	 * will get to handle nonexistent datasets.
	 */
	if (FUNC0(curthread) && FUNC5(cr) == 0)
		return (0);

	error = FUNC3(name, FTAG, &dp);
	if (error != 0)
		return (error);

	error = FUNC1(dp, name, FTAG, &ds);
	if (error != 0) {
		FUNC4(dp, FTAG);
		return (error);
	}

	error = FUNC6(name, ds, perm, cr);

	FUNC2(ds, FTAG);
	FUNC4(dp, FTAG);
	return (error);
}