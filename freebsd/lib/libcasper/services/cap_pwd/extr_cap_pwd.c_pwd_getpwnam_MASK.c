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
struct passwd {int dummy; } ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 struct passwd* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,struct passwd*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(const nvlist_t *limits, const nvlist_t *nvlin, nvlist_t *nvlout)
{
	struct passwd *pwd;
	const char *name;

	if (!FUNC2(nvlin, "name"))
		return (EINVAL);
	name = FUNC3(nvlin, "name");
	FUNC0(name != NULL);

	errno = 0;
	pwd = FUNC1(name);
	if (errno != 0)
		return (errno);

	(void)FUNC4(limits, pwd, nvlout);

	return (0);
}