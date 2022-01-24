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
struct procstat_core {int dummy; } ;
struct procstat {struct procstat_core* core; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROCSTAT_CORE ; 
 struct procstat* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct procstat*) ; 
 struct procstat_core* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

struct procstat *
FUNC4(const char *filename)
{
	struct procstat *procstat;
	struct procstat_core *core;

	procstat = FUNC0(1, sizeof(*procstat));
	if (procstat == NULL) {
		FUNC3("malloc()");
		return (NULL);
	}
	core = FUNC2(filename);
	if (core == NULL) {
		FUNC1(procstat);
		return (NULL);
	}
	procstat->type = PROCSTAT_CORE;
	procstat->core = core;
	return (procstat);
}