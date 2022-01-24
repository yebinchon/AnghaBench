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
typedef  scalar_t__ uid_t ;
struct passwd {int dummy; } ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ errno ; 
 struct passwd* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,struct passwd*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(const nvlist_t *limits, const nvlist_t *nvlin, nvlist_t *nvlout)
{
	struct passwd *pwd;
	uid_t uid;

	if (!FUNC1(nvlin, "uid"))
		return (EINVAL);

	uid = (uid_t)FUNC2(nvlin, "uid");

	errno = 0;
	pwd = FUNC0(uid);
	if (errno != 0)
		return (errno);

	(void)FUNC3(limits, pwd, nvlout);

	return (0);
}