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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  dev_dir ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int PATH_MAX ; 
 char* SYS_INFINIBAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *) ; 
 int set_retry_cnt ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 
 char* sys_dir ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC6(const char *hostname, int force)
{
	DIR *class_dir;
	struct dirent *dent;
	char dev_dir[PATH_MAX];

	FUNC3(dev_dir, sizeof(dev_dir), "%s/%s", sys_dir, SYS_INFINIBAND);
	dev_dir[sizeof(dev_dir)-1] = '\0';

	class_dir = FUNC1(dev_dir);
	if (!class_dir) {
		FUNC4(LOG_INFO, "Failed to open %s", dev_dir);
		return -ENOSYS;
	}

	while ((dent = FUNC2(class_dir))) {
		int retry = set_retry_cnt;
		if (dent->d_name[0] == '.')
			continue;

		while (FUNC5(dent->d_name, hostname, force) && retry > 0) {
			FUNC4(LOG_ERR, "retrying set Node Description on %s\n",
				dent->d_name);
			retry--;
		}
	}

	FUNC0(class_dir);
	return 0;
}