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
struct group {int /*<<< orphan*/  gr_mem; scalar_t__ gr_gid; int /*<<< orphan*/  gr_passwd; int /*<<< orphan*/  gr_name; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct group*,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,char**,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,char*) ; 

__attribute__((used)) static int
FUNC5(const nvlist_t *nvl, struct group *grp, char *buffer,
    size_t bufsize)
{
	int error;

	if (!FUNC3(nvl, "gr_name"))
		return (EINVAL);

	FUNC0(grp, sizeof(*grp));

	error = FUNC2(nvl, "gr_name", &grp->gr_name, &buffer,
	    &bufsize);
	if (error != 0)
		return (error);
	error = FUNC2(nvl, "gr_passwd", &grp->gr_passwd, &buffer,
	    &bufsize);
	if (error != 0)
		return (error);
	grp->gr_gid = (gid_t)FUNC4(nvl, "gr_gid");
	error = FUNC1(nvl, &grp->gr_mem, &buffer, &bufsize);
	if (error != 0)
		return (error);

	return (0);
}