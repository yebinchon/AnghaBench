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
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_objset_type_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ **) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(const char *name, dmu_objset_type_t type,
    boolean_t readonly, void *tag, objset_t **osp)
{
	dsl_pool_t *dp;
	dsl_dataset_t *ds;
	int err;

	err = FUNC2(name, FTAG, &dp);
	if (err != 0)
		return (err);
	err = FUNC1(dp, name, tag, &ds);
	if (err != 0) {
		FUNC3(dp, FTAG);
		return (err);
	}
	err = FUNC0(ds, type, readonly, tag, osp);
	FUNC3(dp, FTAG);

	return (err);
}