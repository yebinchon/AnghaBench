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
struct ptrace_lwpinfo {int dummy; } ;
struct procstat_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSC_TYPE_PTLWPINFO ; 
 void* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct ptrace_lwpinfo* FUNC2 (struct procstat_core*,int /*<<< orphan*/ ,void*,size_t*) ; 
 unsigned int FUNC3 (struct procstat_core*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptrace_lwpinfo *
FUNC4(struct procstat_core *core, unsigned int *cntp)
{
	void *buf;
	struct ptrace_lwpinfo *pl;
	unsigned int cnt;
	size_t len;

	cnt = FUNC3(core, PSC_TYPE_PTLWPINFO);
	if (cnt == 0)
		return (NULL);

	len = cnt * sizeof(*pl);
	buf = FUNC0(1, len);
	pl = FUNC2(core, PSC_TYPE_PTLWPINFO, buf, &len);
	if (pl == NULL) {
		FUNC1(buf);
		return (NULL);
	}
	*cntp = len / sizeof(*pl);
	return (pl);
}