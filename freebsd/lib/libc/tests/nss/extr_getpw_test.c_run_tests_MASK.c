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
struct passwd_test_data {int dummy; } ;
typedef  enum test_methods { ____Placeholder_test_methods } test_methods ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct passwd_test_data*,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct passwd_test_data*,struct passwd_test_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ENOENT ; 
 int R_OK ; 
#define  TEST_BUILD_SNAPSHOT 132 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct passwd_test_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct passwd_test_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TEST_GETPWENT 131 
#define  TEST_GETPWENT_2PASS 130 
#define  TEST_GETPWNAM 129 
#define  TEST_GETPWUID 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,struct passwd_test_data*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,struct passwd_test_data*,int /*<<< orphan*/ ) ; 
 int W_OK ; 
 scalar_t__ FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  clone_passwd ; 
 int /*<<< orphan*/  compare_passwd ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  free_passwd ; 
 int /*<<< orphan*/  passwd ; 
 int FUNC7 (struct passwd_test_data*) ; 
 int /*<<< orphan*/  passwd_read_snapshot_func ; 
 int /*<<< orphan*/  passwd_test_getpwent ; 
 int /*<<< orphan*/  passwd_test_getpwnam ; 
 int /*<<< orphan*/  passwd_test_getpwuid ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  sdump_passwd ; 

__attribute__((used)) static int
FUNC9(const char *snapshot_file, enum test_methods method)
{
	struct passwd_test_data td, td_snap, td_2pass;
	int rv;

	FUNC3(passwd, &td, clone_passwd, free_passwd);
	FUNC3(passwd, &td_snap, clone_passwd, free_passwd);
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

			FUNC4(passwd, snapshot_file,
				&td_snap, passwd_read_snapshot_func);
		}
	}

	rv = FUNC7(&td);
	if (rv == -1)
		return (-1);

	switch (method) {
	case TEST_GETPWNAM:
		if (snapshot_file == NULL)
			rv = FUNC0(passwd, &td,
				passwd_test_getpwnam, (void *)&td);
		else
			rv = FUNC0(passwd, &td_snap,
				passwd_test_getpwnam, (void *)&td_snap);
		break;
	case TEST_GETPWUID:
		if (snapshot_file == NULL)
			rv = FUNC0(passwd, &td,
				passwd_test_getpwuid, (void *)&td);
		else
			rv = FUNC0(passwd, &td_snap,
				passwd_test_getpwuid, (void *)&td_snap);
		break;
	case TEST_GETPWENT:
		if (snapshot_file == NULL)
			rv = FUNC0(passwd, &td, passwd_test_getpwent,
				(void *)&td);
		else
			rv = FUNC1(passwd, &td, &td_snap,
				compare_passwd, NULL);
		break;
	case TEST_GETPWENT_2PASS:
		FUNC3(passwd, &td_2pass, clone_passwd, free_passwd);
		rv = FUNC7(&td_2pass);
		if (rv != -1)
			rv = FUNC1(passwd, &td, &td_2pass,
			    compare_passwd, NULL);
		FUNC2(passwd, &td_2pass);
		break;
	case TEST_BUILD_SNAPSHOT:
		if (snapshot_file != NULL)
			rv = FUNC5(passwd, snapshot_file,
			    &td, sdump_passwd);
		break;
	default:
		rv = 0;
		break;
	}

fin:
	FUNC2(passwd, &td_snap);
	FUNC2(passwd, &td);

	return (rv);
}