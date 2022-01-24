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
struct group_test_data {int dummy; } ;
typedef  enum test_methods { ____Placeholder_test_methods } test_methods ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct group_test_data*,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct group_test_data*,struct group_test_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ENOENT ; 
 int R_OK ; 
#define  TEST_BUILD_SNAPSHOT 132 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct group_test_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct group_test_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TEST_GETGRENT 131 
#define  TEST_GETGRENT_2PASS 130 
#define  TEST_GETGRGID 129 
#define  TEST_GETGRNAM 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,struct group_test_data*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,struct group_test_data*,int /*<<< orphan*/ ) ; 
 int W_OK ; 
 scalar_t__ FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  clone_group ; 
 int /*<<< orphan*/  compare_group ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  free_group ; 
 int /*<<< orphan*/  group ; 
 int FUNC7 (struct group_test_data*) ; 
 int /*<<< orphan*/  group_read_snapshot_func ; 
 int /*<<< orphan*/  group_test_getgrent ; 
 int /*<<< orphan*/  group_test_getgrgid ; 
 int /*<<< orphan*/  group_test_getgrnam ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  sdump_group ; 

__attribute__((used)) static int
FUNC9(const char *snapshot_file, enum test_methods method)
{
	struct group_test_data td, td_snap, td_2pass;
	int rv;

	FUNC3(group, &td, clone_group, free_group);
	FUNC3(group, &td_snap, clone_group, free_group);
	if (snapshot_file != NULL) {
		if (FUNC6(snapshot_file, W_OK | R_OK) != 0) {
			if (errno == ENOENT)
				method = TEST_BUILD_SNAPSHOT;
			else {
				FUNC8("can't access the file %s\n",
				    snapshot_file);

				rv = -1;
				goto fin;
			}
		} else {
			if (method == TEST_BUILD_SNAPSHOT) {
				rv = 0;
				goto fin;
			}

			FUNC4(group, snapshot_file,
				&td_snap, group_read_snapshot_func);
		}
	}

	rv = FUNC7(&td);
	if (rv == -1)
		return (-1);
	switch (method) {
	case TEST_GETGRNAM:
		if (snapshot_file == NULL)
			rv = FUNC0(group, &td,
				group_test_getgrnam, (void *)&td);
		else
			rv = FUNC0(group, &td_snap,
				group_test_getgrnam, (void *)&td_snap);
		break;
	case TEST_GETGRGID:
		if (snapshot_file == NULL)
			rv = FUNC0(group, &td,
				group_test_getgrgid, (void *)&td);
		else
			rv = FUNC0(group, &td_snap,
				group_test_getgrgid, (void *)&td_snap);
		break;
	case TEST_GETGRENT:
		if (snapshot_file == NULL)
			rv = FUNC0(group, &td, group_test_getgrent,
				(void *)&td);
		else
			rv = FUNC1(group, &td, &td_snap,
				compare_group, NULL);
		break;
	case TEST_GETGRENT_2PASS:
			FUNC3(group, &td_2pass, clone_group, free_group);
			rv = FUNC7(&td_2pass);
			if (rv != -1)
				rv = FUNC1(group, &td, &td_2pass,
					compare_group, NULL);
			FUNC2(group, &td_2pass);
		break;
	case TEST_BUILD_SNAPSHOT:
		if (snapshot_file != NULL)
			rv = FUNC5(group, snapshot_file, &td,
			    sdump_group);
		break;
	default:
		rv = 0;
		break;
	}

fin:
	FUNC2(group, &td_snap);
	FUNC2(group, &td);

	return (rv);
}