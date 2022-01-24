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
struct protoent_test_data {int dummy; } ;
typedef  enum test_methods { ____Placeholder_test_methods } test_methods ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct protoent_test_data*,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct protoent_test_data*,struct protoent_test_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ENOENT ; 
 int R_OK ; 
#define  TEST_BUILD_SNAPSHOT 132 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct protoent_test_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct protoent_test_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TEST_GETPROTOBYNAME 131 
#define  TEST_GETPROTOBYNUMBER 130 
#define  TEST_GETPROTOENT 129 
#define  TEST_GETPROTOENT_2PASS 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,struct protoent_test_data*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,struct protoent_test_data*,int /*<<< orphan*/ ) ; 
 int W_OK ; 
 scalar_t__ FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  clone_protoent ; 
 int /*<<< orphan*/  compare_protoent ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  free_protoent ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  protoent ; 
 int FUNC8 (struct protoent_test_data*) ; 
 int /*<<< orphan*/  protoent_read_snapshot_func ; 
 int /*<<< orphan*/  protoent_test_getprotobyname ; 
 int /*<<< orphan*/  protoent_test_getprotobynumber ; 
 int /*<<< orphan*/  protoent_test_getprotoent ; 
 int /*<<< orphan*/  sdump_protoent ; 

__attribute__((used)) static int
FUNC9(const char *snapshot_file, enum test_methods method)
{
	struct protoent_test_data td, td_snap, td_2pass;
	int rv;

	FUNC3(protoent, &td, clone_protoent, free_protoent);
	FUNC3(protoent, &td_snap, clone_protoent, free_protoent);
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

			FUNC4(protoent, snapshot_file,
				&td_snap, protoent_read_snapshot_func);
		}
	}

	rv = FUNC8(&td);
	if (rv == -1)
		return (-1);
	switch (method) {
	case TEST_GETPROTOBYNAME:
		if (snapshot_file == NULL)
			rv = FUNC0(protoent, &td,
				protoent_test_getprotobyname, (void *)&td);
		else
			rv = FUNC0(protoent, &td_snap,
				protoent_test_getprotobyname, (void *)&td_snap);
		break;
	case TEST_GETPROTOBYNUMBER:
		if (snapshot_file == NULL)
			rv = FUNC0(protoent, &td,
				protoent_test_getprotobynumber, (void *)&td);
		else
			rv = FUNC0(protoent, &td_snap,
				protoent_test_getprotobynumber, (void *)&td_snap);
		break;
	case TEST_GETPROTOENT:
		if (snapshot_file == NULL)
			rv = FUNC0(protoent, &td,
				protoent_test_getprotoent, (void *)&td);
		else
			rv = FUNC1(protoent, &td, &td_snap,
				compare_protoent, NULL);
		break;
	case TEST_GETPROTOENT_2PASS:
		FUNC3(protoent, &td_2pass, clone_protoent,
		    free_protoent);
		rv = FUNC8(&td_2pass);
		if (rv != -1)
			rv = FUNC1(protoent, &td, &td_2pass,
				compare_protoent, NULL);
		FUNC2(protoent, &td_2pass);
		break;
	case TEST_BUILD_SNAPSHOT:
		if (snapshot_file != NULL)
			rv = FUNC5(protoent, snapshot_file,
			    &td, sdump_protoent);
		break;
	default:
		rv = 0;
		break;
	}

fin:
	FUNC2(protoent, &td_snap);
	FUNC2(protoent, &td);

	return (rv);
}