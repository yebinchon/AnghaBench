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
struct addrinfo_test_data {int dummy; } ;
struct addrinfo {int dummy; } ;
struct TYPE_3__ {int ai_family; int /*<<< orphan*/  ai_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AI_CANONNAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct addrinfo_test_data*,struct addrinfo_test_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ENOENT ; 
 int R_OK ; 
#define  TEST_BUILD_SNAPSHOT 129 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct addrinfo_test_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct addrinfo_test_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TEST_GETADDRINFO 128 
 int FUNC6 (int /*<<< orphan*/ ,char const*,struct addrinfo_test_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,struct addrinfo_test_data*,int /*<<< orphan*/ ) ; 
 int W_OK ; 
 scalar_t__ FUNC8 (char const*,int) ; 
 int /*<<< orphan*/  addrinfo ; 
 int /*<<< orphan*/  addrinfo_read_hostlist_func ; 
 int /*<<< orphan*/  addrinfo_read_snapshot_func ; 
 int /*<<< orphan*/  clone_addrinfo ; 
 int /*<<< orphan*/  compare_addrinfo ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  free_addrinfo ; 
 TYPE_1__ hints ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int method ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int /*<<< orphan*/  sdump_addrinfo ; 
 char* FUNC12 (char const*) ; 
 char* FUNC13 (scalar_t__) ; 

__attribute__((used)) static void
FUNC14(char *hostlist_file, const char *snapshot_file, int ai_family)
{
	struct addrinfo_test_data td, td_snap;
	char *snapshot_file_copy;
	int rv;

	if (snapshot_file == NULL)
		snapshot_file_copy = NULL;
	else {
		snapshot_file_copy = FUNC12(snapshot_file);
		FUNC1(snapshot_file_copy != NULL);
	}

	FUNC10(&hints, 0, sizeof(struct addrinfo));
	hints.ai_family = ai_family;
	hints.ai_flags = AI_CANONNAME;

	if (snapshot_file != NULL)
		method = TEST_BUILD_SNAPSHOT;

	FUNC5(addrinfo, &td, clone_addrinfo, free_addrinfo);
	FUNC5(addrinfo, &td_snap, clone_addrinfo, free_addrinfo);

	FUNC2(FUNC8(hostlist_file, R_OK) == 0,
		"can't access the hostlist file %s\n", hostlist_file);

	FUNC11("building host lists from %s\n", hostlist_file);

	rv = FUNC6(addrinfo, hostlist_file, &td,
		addrinfo_read_hostlist_func);
	if (rv != 0)
		goto fin;

	if (snapshot_file != NULL) {
		if (FUNC8(snapshot_file, W_OK | R_OK) != 0) {
			if (errno == ENOENT)
				method = TEST_BUILD_SNAPSHOT;
			else {
				FUNC11("can't access the snapshot "
				    "file %s\n", snapshot_file);

				rv = -1;
				goto fin;
			}
		} else {
			rv = FUNC6(addrinfo, snapshot_file,
				&td_snap, addrinfo_read_snapshot_func);
			if (rv != 0) {
				FUNC11("error reading snapshot file: %s\n",
				    FUNC13(errno));
				goto fin;
			}
		}
	}

	switch (method) {
	case TEST_GETADDRINFO:
		if (snapshot_file != NULL)
			FUNC0(FUNC3(addrinfo, &td, &td_snap,
				compare_addrinfo, NULL) == 0);
		break;
	case TEST_BUILD_SNAPSHOT:
		if (snapshot_file != NULL) {
			FUNC0(FUNC7(addrinfo,
			    snapshot_file, &td, sdump_addrinfo) == 0);
		}
		break;
	default:
		break;
	}

fin:
	FUNC4(addrinfo, &td_snap);
	FUNC4(addrinfo, &td);

	FUNC9(snapshot_file_copy);
}