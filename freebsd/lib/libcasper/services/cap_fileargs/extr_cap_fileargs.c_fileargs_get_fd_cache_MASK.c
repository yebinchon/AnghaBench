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
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_3__ {scalar_t__ fa_magic; int fa_fdflags; int /*<<< orphan*/ * fa_cache; } ;
typedef  TYPE_1__ fileargs_t ;

/* Variables and functions */
 scalar_t__ FILEARGS_MAGIC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int
FUNC8(fileargs_t *fa, const char *name)
{
	int fd;
	const nvlist_t *nvl;
	nvlist_t *tnvl;

	FUNC0(fa != NULL);
	FUNC0(fa->fa_magic == FILEARGS_MAGIC);
	FUNC0(name != NULL);

	if (fa->fa_cache == NULL)
		return (-1);

	if ((fa->fa_fdflags & O_CREAT) != 0)
		return (-1);

	nvl = FUNC2(fa->fa_cache, name, NULL);
	if (nvl == NULL)
		return (-1);

	tnvl = FUNC7(fa->fa_cache, name);

	if (!FUNC5(tnvl, "fd")) {
		FUNC4(tnvl);
		return (-1);
	}

	fd = FUNC6(tnvl, "fd");
	FUNC4(tnvl);

	if ((fa->fa_fdflags & O_CLOEXEC) != O_CLOEXEC) {
		if (FUNC3(fd, F_SETFD, fa->fa_fdflags) == -1) {
			FUNC1(fd);
			return (-1);
		}
	}

	return (fd);
}