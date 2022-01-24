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
struct group {int dummy; } ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 struct group* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,struct group*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,char*) ; 

__attribute__((used)) static int
FUNC5(const nvlist_t *limits, const nvlist_t *nvlin, nvlist_t *nvlout)
{
	struct group *grp;
	const char *name;

	if (!FUNC3(nvlin, "name"))
		return (EINVAL);
	name = FUNC4(nvlin, "name");
	FUNC0(name != NULL);

	errno = 0;
	grp = FUNC1(name);
	if (errno != 0)
		return (errno);

	(void)FUNC2(limits, grp, nvlout);

	return (0);
}