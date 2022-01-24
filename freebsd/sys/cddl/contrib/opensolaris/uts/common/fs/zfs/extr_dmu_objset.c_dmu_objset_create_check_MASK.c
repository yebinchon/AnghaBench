#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dir_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  doca_cred; int /*<<< orphan*/  doca_name; } ;
typedef  TYPE_1__ dmu_objset_create_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_FILESYSTEM_LIMIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(void *arg, dmu_tx_t *tx)
{
	dmu_objset_create_arg_t *doca = arg;
	dsl_pool_t *dp = FUNC2(tx);
	dsl_dir_t *pdd;
	const char *tail;
	int error;

	if (FUNC6(doca->doca_name, '@') != NULL)
		return (FUNC0(EINVAL));

	if (FUNC7(doca->doca_name) >= ZFS_MAX_DATASET_NAME_LEN)
		return (FUNC0(ENAMETOOLONG));

	if (FUNC1(doca->doca_name) != 0)
		return (FUNC0(ENAMETOOLONG));

	error = FUNC3(dp, doca->doca_name, FTAG, &pdd, &tail);
	if (error != 0)
		return (error);
	if (tail == NULL) {
		FUNC4(pdd, FTAG);
		return (FUNC0(EEXIST));
	}
	error = FUNC5(pdd, 1, ZFS_PROP_FILESYSTEM_LIMIT, NULL,
	    doca->doca_cred);
	FUNC4(pdd, FTAG);

	return (error);
}