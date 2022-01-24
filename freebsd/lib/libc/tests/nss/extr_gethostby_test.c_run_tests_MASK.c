#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hostent_test_data {int dummy; } ;
typedef  TYPE_1__* res_state ;
typedef  enum test_methods { ____Placeholder_test_methods } test_methods ;
struct TYPE_4__ {int options; } ;

/* Variables and functions */
#define  AF_INET 135 
#define  AF_INET6 134 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct hostent_test_data*,int /*<<< orphan*/ ,void*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct hostent_test_data*,struct hostent_test_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ENOENT ; 
 int RES_INIT ; 
 int RES_USE_INET6 ; 
 int R_OK ; 
#define  TEST_BUILD_ADDR_SNAPSHOT 133 
#define  TEST_BUILD_SNAPSHOT 132 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct hostent_test_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct hostent_test_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  TEST_GETHOSTBYADDR 131 
#define  TEST_GETHOSTBYADDR_GETNAMEINFO 130 
#define  TEST_GETHOSTBYNAME2 129 
#define  TEST_GETHOSTBYNAME2_GETADDRINFO 128 
 int FUNC6 (int /*<<< orphan*/ ,char const*,struct hostent_test_data*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char const*,struct hostent_test_data*,int /*<<< orphan*/ ) ; 
 int W_OK ; 
 TYPE_1__* FUNC8 () ; 
 scalar_t__ FUNC9 (char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  clone_hostent ; 
 int /*<<< orphan*/  compare_hostent ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  free_hostent ; 
 int /*<<< orphan*/  hostent ; 
 int /*<<< orphan*/  hostent_read_hostlist_func ; 
 int /*<<< orphan*/  hostent_read_snapshot_func ; 
 int /*<<< orphan*/  hostent_test_getaddrinfo_eq ; 
 int /*<<< orphan*/  hostent_test_gethostbyaddr ; 
 int /*<<< orphan*/  hostent_test_getnameinfo_eq ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  sdump_hostent ; 
 char* FUNC14 (char const*) ; 
 int /*<<< orphan*/  use_ipnode_functions ; 

__attribute__((used)) static int
FUNC15(const char *hostlist_file, const char *snapshot_file, int _af_type,
    enum test_methods method, bool use_ipv6_mapping)
{
	char *snapshot_file_copy;
	struct hostent_test_data td, td_addr, td_snap;
	res_state statp;
	int rv = -2;

	if (snapshot_file == NULL)
		snapshot_file_copy = NULL;
	else {
		snapshot_file_copy = FUNC14(snapshot_file);
		FUNC0(snapshot_file_copy != NULL);
	}
	snapshot_file = snapshot_file_copy;

	switch (_af_type) {
	case AF_INET:
		FUNC1("inet");
		FUNC0(!use_ipv6_mapping);
		break;
	case AF_INET6:
		FUNC1("inet6");
		break;
	default:
		FUNC10("unhandled address family: %d", _af_type);
		break;
	}

	if (!use_ipnode_functions) {
		statp = FUNC8();
		if (statp == NULL || ((statp->options & RES_INIT) == 0 &&
		    FUNC13(statp) == -1)) {
			FUNC12("error: can't init res_state\n");
			rv = -1;
			goto fin2;
		}

		if (use_ipv6_mapping)
			statp->options |= RES_USE_INET6;
		else
			statp->options &= ~RES_USE_INET6;
	}

	FUNC5(hostent, &td, clone_hostent, free_hostent);
	FUNC5(hostent, &td_addr, clone_hostent, free_hostent);
	FUNC5(hostent, &td_snap, clone_hostent, free_hostent);

	if (FUNC9(hostlist_file, R_OK) != 0) {
		FUNC12("can't access the hostlist file %s\n", hostlist_file);
		rv = -1;
		goto fin;
	}

#ifdef DEBUG
	printf("building host lists from %s\n", hostlist_file);
#endif

	rv = FUNC6(hostent, hostlist_file, &td,
		hostent_read_hostlist_func);
	if (rv != 0) {
		FUNC12("failed to read the host list file: %s\n",
		    hostlist_file);
		goto fin;
	}

	if (snapshot_file != NULL) {
		if (FUNC9(snapshot_file, W_OK | R_OK) != 0) {
			if (errno == ENOENT) {
				if (method != TEST_GETHOSTBYADDR)
					method = TEST_BUILD_SNAPSHOT;
				else
					method = TEST_BUILD_ADDR_SNAPSHOT;
			} else {
				FUNC12("can't access the snapshot file %s\n",
				    snapshot_file);
				rv = -1;
				goto fin;
			}
		} else {
			rv = FUNC6(hostent, snapshot_file,
				&td_snap, hostent_read_snapshot_func);
			if (rv != 0) {
				FUNC12("error reading snapshot file\n");
				goto fin;
			}
		}
	}

	switch (method) {
	case TEST_GETHOSTBYNAME2:
		if (snapshot_file != NULL)
			rv = FUNC3(hostent, &td, &td_snap,
			    compare_hostent, NULL);
		break;
	case TEST_GETHOSTBYADDR:
		rv = FUNC2(hostent, &td,
			hostent_test_gethostbyaddr, (void *)&td_addr);
		if (rv != 0)
			goto fin;

		if (snapshot_file != NULL)
			rv = FUNC3(hostent, &td_addr, &td_snap,
			    compare_hostent, NULL);
		break;
	case TEST_GETHOSTBYNAME2_GETADDRINFO:
		rv = FUNC2(hostent, &td,
			hostent_test_getaddrinfo_eq, NULL);
		break;
	case TEST_GETHOSTBYADDR_GETNAMEINFO:
		rv = FUNC2(hostent, &td,
			hostent_test_getnameinfo_eq, NULL);
		break;
	case TEST_BUILD_SNAPSHOT:
		if (snapshot_file != NULL) {
			rv = FUNC7(hostent, snapshot_file,
			    &td, sdump_hostent);
		}
		break;
	case TEST_BUILD_ADDR_SNAPSHOT:
		if (snapshot_file != NULL) {
			rv = FUNC2(hostent, &td,
			    hostent_test_gethostbyaddr, (void *)&td_addr);
			if (rv != 0)
				goto fin;
			rv = FUNC7(hostent, snapshot_file,
			    &td_addr, sdump_hostent);
		}
		break;
	default:
		rv = 0;
		break;
	}

fin:
	FUNC4(hostent, &td_snap);
	FUNC4(hostent, &td_addr);
	FUNC4(hostent, &td);

fin2:
	FUNC11(snapshot_file_copy);

	return (rv);
}