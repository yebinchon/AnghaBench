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
typedef  int /*<<< orphan*/  new_nd ;
typedef  int /*<<< orphan*/  nd_file ;
typedef  int /*<<< orphan*/  nd ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int PATH_MAX ; 
 char* SYS_INFINIBAND ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*,char const*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 char* sys_dir ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*,...) ; 

__attribute__((used)) static int FUNC10(const char *device, const char *hostname, int force)
{
	int rc;
	char nd[128];
	char new_nd[64];
	char nd_file[PATH_MAX];
	FILE *f;

	FUNC7(nd_file, sizeof(nd_file), "%s/%s/%s/node_desc",
			sys_dir, SYS_INFINIBAND, device);
	nd_file[sizeof(nd_file)-1] = '\0';

	f = FUNC3(nd_file, "r+");
	if (!f) {
		FUNC9(LOG_ERR, "Failed to open %s\n", nd_file);
		return -EIO;
	}

	if (!FUNC2(nd, sizeof(nd), f)) {
		FUNC9(LOG_ERR, "Failed to read %s\n", nd_file);
		rc = -EIO;
		goto error;
	}
	FUNC5(nd);

	FUNC0(new_nd, sizeof(new_nd), device, hostname);

	if (!force && FUNC8(new_nd, nd, sizeof(new_nd)) == 0) {
		FUNC9(LOG_INFO, "%s: no change (%s)\n", device, new_nd);
	} else {
		FUNC9(LOG_INFO, "%s: change (%s) -> (%s)\n",
			device, nd, new_nd);
		FUNC6(f);
		FUNC4(f, new_nd);
	}

	rc = 0;
error:
	FUNC1(f);
	return rc;
}