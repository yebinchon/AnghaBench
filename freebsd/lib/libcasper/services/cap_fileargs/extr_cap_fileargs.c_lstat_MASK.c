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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_6__ {scalar_t__ fa_magic; int /*<<< orphan*/ * fa_chann; } ;
typedef  TYPE_1__ fileargs_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTCAPABLE ; 
 scalar_t__ FILEARGS_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,char const*,char*) ; 
 int FUNC2 (TYPE_1__*,char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct stat*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *,char*,size_t*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

int
FUNC10(fileargs_t *fa, const char *name, struct stat *sb)
{
	nvlist_t *nvl;
	const void *buf;
	size_t size;
	char *cmd;

	FUNC0(fa != NULL);
	FUNC0(fa->fa_magic == FILEARGS_MAGIC);

	if (name == NULL) {
		errno = EINVAL;
		return (-1);
	}

	if (sb == NULL) {
		errno = EFAULT;
		return (-1);
	}

	if (fa->fa_chann == NULL) {
		errno = ENOTCAPABLE;
		return (-1);
	}

	if (FUNC2(fa, name, sb) != -1)
		return (0);

	nvl = FUNC1(fa, name, "lstat");
	if (nvl == NULL)
		return (-1);

	buf = FUNC7(nvl, "stat", &size);
	FUNC0(size == sizeof(*sb));
	FUNC5(sb, buf, size);

	cmd = FUNC8(nvl, "cmd");
	if (FUNC9(cmd, "cache") == 0)
		FUNC3(fa, nvl);
	else
		FUNC6(nvl);
	FUNC4(cmd);

	return (0);
}