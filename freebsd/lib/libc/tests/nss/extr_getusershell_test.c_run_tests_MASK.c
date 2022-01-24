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
struct usershell_test_data {int dummy; } ;
struct usershell {int /*<<< orphan*/ * path; } ;
typedef  enum test_methods { ____Placeholder_test_methods } test_methods ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct usershell_test_data*,struct usershell_test_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ENOENT ; 
 int R_OK ; 
#define  TEST_BUILD_SNAPSHOT 129 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct usershell_test_data*,struct usershell*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct usershell_test_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct usershell_test_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TEST_GETUSERSHELL 128 
 int FUNC4 (int /*<<< orphan*/ ,char const*,struct usershell_test_data*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*,struct usershell_test_data*,int /*<<< orphan*/ ) ; 
 int W_OK ; 
 scalar_t__ FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  clone_usershell ; 
 int /*<<< orphan*/  compare_usershell ; 
 int /*<<< orphan*/  FUNC7 (struct usershell*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  free_usershell ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  sdump_usershell ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  usershell ; 
 int /*<<< orphan*/  usershell_read_snapshot_func ; 

__attribute__((used)) static int
FUNC12(const char *snapshot_file, enum test_methods method)
{
	struct usershell_test_data td, td_snap;
	struct usershell ushell;
	int rv;

	rv = 0;

	FUNC3(usershell, &td, clone_usershell, free_usershell);
	FUNC3(usershell, &td_snap, clone_usershell, free_usershell);

	FUNC11();
	while ((ushell.path = FUNC9()) != NULL) {
		FUNC10("usershell found:\n");
		FUNC7(&ushell);
		FUNC1(usershell, &td, &ushell);
	}
	FUNC8();

	if (snapshot_file != NULL) {
		if (FUNC6(snapshot_file, W_OK | R_OK) != 0) {
			if (errno == ENOENT)
				method = TEST_BUILD_SNAPSHOT;
			else {
				FUNC10("can't access the snapshot file %s\n",
				    snapshot_file);

				rv = -1;
				goto fin;
			}
		} else {
			rv = FUNC4(usershell, snapshot_file,
				&td_snap, usershell_read_snapshot_func);
			if (rv != 0) {
				FUNC10("error reading snapshot file\n");
				goto fin;
			}
		}
	}

	switch (method) {
	case TEST_GETUSERSHELL:
		rv = FUNC0(usershell, &td, &td_snap,
			compare_usershell, NULL);
		break;
	case TEST_BUILD_SNAPSHOT:
		if (snapshot_file != NULL) {
			rv = FUNC5(usershell, snapshot_file,
			    &td, sdump_usershell);
		}
		break;
	default:
		rv = 0;
		break;
	}

fin:
	FUNC2(usershell, &td_snap);
	FUNC2(usershell, &td);

	return (rv);
}