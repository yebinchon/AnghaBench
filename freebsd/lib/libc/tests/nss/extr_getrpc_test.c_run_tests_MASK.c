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
struct rpcent_test_data {int dummy; } ;
typedef  enum test_methods { ____Placeholder_test_methods } test_methods ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct rpcent_test_data*,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct rpcent_test_data*,struct rpcent_test_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ENOENT ; 
 int R_OK ; 
#define  TEST_BUILD_SNAPSHOT 132 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rpcent_test_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rpcent_test_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TEST_GETRPCBYNAME 131 
#define  TEST_GETRPCBYNUMBER 130 
#define  TEST_GETRPCENT 129 
#define  TEST_GETRPCENT_2PASS 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,struct rpcent_test_data*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,struct rpcent_test_data*,int /*<<< orphan*/ ) ; 
 int W_OK ; 
 scalar_t__ FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  clone_rpcent ; 
 int /*<<< orphan*/  compare_rpcent ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  free_rpcent ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  rpcent ; 
 int FUNC8 (struct rpcent_test_data*) ; 
 int /*<<< orphan*/  rpcent_read_snapshot_func ; 
 int /*<<< orphan*/  rpcent_test_getrpcbyname ; 
 int /*<<< orphan*/  rpcent_test_getrpcbynumber ; 
 int /*<<< orphan*/  rpcent_test_getrpcent ; 
 int /*<<< orphan*/  sdump_rpcent ; 

__attribute__((used)) static int
FUNC9(const char *snapshot_file, enum test_methods method)
{
	struct rpcent_test_data td, td_snap, td_2pass;
	int rv;

	FUNC3(rpcent, &td, clone_rpcent, free_rpcent);
	FUNC3(rpcent, &td_snap, clone_rpcent, free_rpcent);
	if (snapshot_file != NULL) {
		if (FUNC6(snapshot_file, W_OK | R_OK) != 0) {
			if (errno == ENOENT)
				method = TEST_BUILD_SNAPSHOT;
			else {
				FUNC7("can't access the file %s\n",
				    snapshot_file);

				rv = -1;
				goto fin;
			}
		} else {
			if (method == TEST_BUILD_SNAPSHOT) {
				rv = 0;
				goto fin;
			}

			FUNC4(rpcent, snapshot_file,
				&td_snap, rpcent_read_snapshot_func);
		}
	}

	rv = FUNC8(&td);
	if (rv == -1)
		return (-1);
	switch (method) {
	case TEST_GETRPCBYNAME:
		if (snapshot_file == NULL)
			rv = FUNC0(rpcent, &td,
				rpcent_test_getrpcbyname, (void *)&td);
		else
			rv = FUNC0(rpcent, &td_snap,
				rpcent_test_getrpcbyname, (void *)&td_snap);
		break;
	case TEST_GETRPCBYNUMBER:
		if (snapshot_file == NULL)
			rv = FUNC0(rpcent, &td,
				rpcent_test_getrpcbynumber, (void *)&td);
		else
			rv = FUNC0(rpcent, &td_snap,
				rpcent_test_getrpcbynumber, (void *)&td_snap);
		break;
	case TEST_GETRPCENT:
		if (snapshot_file == NULL)
			rv = FUNC0(rpcent, &td, rpcent_test_getrpcent,
				(void *)&td);
		else
			rv = FUNC1(rpcent, &td, &td_snap,
				compare_rpcent, NULL);
		break;
	case TEST_GETRPCENT_2PASS:
			FUNC3(rpcent, &td_2pass, clone_rpcent, free_rpcent);
			rv = FUNC8(&td_2pass);
			if (rv != -1)
				rv = FUNC1(rpcent, &td, &td_2pass,
					compare_rpcent, NULL);
			FUNC2(rpcent, &td_2pass);
		break;
	case TEST_BUILD_SNAPSHOT:
		if (snapshot_file != NULL)
		    rv = FUNC5(rpcent, snapshot_file, &td,
			sdump_rpcent);
		break;
	default:
		rv = 0;
		break;
	}

fin:
	FUNC2(rpcent, &td_snap);
	FUNC2(rpcent, &td);

	return (rv);
}