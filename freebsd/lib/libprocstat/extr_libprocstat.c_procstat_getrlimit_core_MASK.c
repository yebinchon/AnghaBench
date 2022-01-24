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
struct rlimit {int dummy; } ;
struct procstat_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  PSC_TYPE_RLIMIT ; 
 int RLIM_NLIMITS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct rlimit*) ; 
 struct rlimit* FUNC1 (struct procstat_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(struct procstat_core *core, int which,
    struct rlimit* rlimit)
{
	size_t len;
	struct rlimit* rlimits;

	if (which < 0 || which >= RLIM_NLIMITS) {
		errno = EINVAL;
		FUNC2("getrlimit: which");
		return (-1);
	}
	rlimits = FUNC1(core, PSC_TYPE_RLIMIT, NULL, &len);
	if (rlimits == NULL)
		return (-1);
	if (len < sizeof(struct rlimit) * RLIM_NLIMITS) {
		FUNC0(rlimits);
		return (-1);
	}
	*rlimit = rlimits[which];
	FUNC0(rlimits);
	return (0);
}