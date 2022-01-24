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
typedef  scalar_t__ u_int32_t ;
struct pfioc_ruleset {char* name; scalar_t__ nr; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  prs ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGETRULESET ; 
 int /*<<< orphan*/  DIOCGETRULESETS ; 
 scalar_t__ EINVAL ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  anchorname ; 
 int /*<<< orphan*/  dev ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pfioc_ruleset*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pfioc_ruleset*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC8(void)
{
	struct pfioc_ruleset	 prs;
	u_int32_t		 nr;

	FUNC3(&prs, 0, sizeof(prs));
	FUNC6(prs.path, anchorname, sizeof(prs.path));
	if (FUNC1(dev, DIOCGETRULESETS, &prs)) {
		if (errno == EINVAL)
			return (0);
		else
			return (1);
	}

	nr = prs.nr;
	while (nr) {
		char	*s, *t;
		pid_t	 pid;

		prs.nr = nr - 1;
		if (FUNC1(dev, DIOCGETRULESET, &prs))
			return (1);
		errno = 0;
		if ((t = FUNC5(prs.name, '(')) == NULL)
			t = prs.name;
		else
			t++;
		pid = FUNC7(t, &s, 10);
		if (!prs.name[0] || errno ||
		    (*s && (t == prs.name || *s != ')')))
			return (1);
		if ((FUNC2(pid, 0) && errno != EPERM) || pid == FUNC0()) {
			if (FUNC4(anchorname, prs.name))
				return (1);
		}
		nr--;
	}
	return (0);
}