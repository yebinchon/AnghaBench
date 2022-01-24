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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  sb ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int ENOTCAPABLE ; 
 int /*<<< orphan*/  FA_LSTAT ; 
 int /*<<< orphan*/  allcached ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lastname ; 
 int FUNC2 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,struct stat*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(const nvlist_t *limits, nvlist_t *nvlin,
    nvlist_t *nvlout)
{
	int error;
	const char *name;
	struct stat sb;

	if (limits == NULL)
		return (ENOTCAPABLE);

	if (!FUNC1(limits, nvlin, FA_LSTAT))
		return (ENOTCAPABLE);

	name = FUNC5(nvlin, "name");

	error = FUNC2(name, &sb);
	if (error < 0)
		return (errno);

	if (!allcached && (lastname == NULL ||
	    FUNC6(name, lastname) == 0)) {
		FUNC4(nvlout, "cmd", "cache");
		FUNC0(nvlout, limits, name);
	} else {
		FUNC4(nvlout, "cmd", "lstat");
	}
	FUNC3(nvlout, "stat", &sb, sizeof(sb));
	return (0);
}