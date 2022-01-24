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
struct TYPE_3__ {int /*<<< orphan*/  fa_chann; } ;
typedef  TYPE_1__ fileargs_t ;

/* Variables and functions */
 int /*<<< orphan*/  NV_FLAG_NO_UNIQUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static nvlist_t*
FUNC6(fileargs_t *fa, const char *name, const char *cmd)
{
	nvlist_t *nvl;
	int serrno;

	FUNC0(fa != NULL);
	FUNC0(name != NULL);

	nvl = FUNC3(NV_FLAG_NO_UNIQUE);
	FUNC2(nvl, "cmd", cmd);
	FUNC2(nvl, "name", name);

	nvl = FUNC1(fa->fa_chann, nvl);
	if (nvl == NULL)
		return (NULL);

	if (FUNC5(nvl, "error") != 0) {
		serrno = (int)FUNC5(nvl, "error");
		FUNC4(nvl);
		errno = serrno;
		return (NULL);
	}

	return (nvl);
}