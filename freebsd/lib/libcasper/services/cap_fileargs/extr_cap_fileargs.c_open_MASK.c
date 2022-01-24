#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_6__ {scalar_t__ fa_magic; int /*<<< orphan*/ * fa_chann; } ;
typedef  TYPE_1__ fileargs_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTCAPABLE ; 
 scalar_t__ FILEARGS_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char const*,char*) ; 
 int FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

int
FUNC9(fileargs_t *fa, const char *name)
{
	int fd;
	nvlist_t *nvl;
	char *cmd;

	FUNC0(fa != NULL);
	FUNC0(fa->fa_magic == FILEARGS_MAGIC);

	if (name == NULL) {
		errno = EINVAL;
		return (-1);
	}

	if (fa->fa_chann == NULL) {
		errno = ENOTCAPABLE;
		return (-1);
	}

	fd = FUNC2(fa, name);
	if (fd != -1)
		return (fd);

	nvl = FUNC1(fa, name, "open");
	if (nvl == NULL)
		return (-1);

	fd = FUNC6(nvl, "fd");
	cmd = FUNC7(nvl, "cmd");
	if (FUNC8(cmd, "cache") == 0)
		FUNC3(fa, nvl);
	else
		FUNC5(nvl);
	FUNC4(cmd);

	return (fd);
}