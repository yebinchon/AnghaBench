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
struct procstat {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROCSTAT_SYSCTL ; 
 struct procstat* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

struct procstat *
FUNC2(void)
{
	struct procstat *procstat;

	procstat = FUNC0(1, sizeof(*procstat));
	if (procstat == NULL) {
		FUNC1("malloc()");
		return (NULL);
	}
	procstat->type = PROCSTAT_SYSCTL;
	return (procstat);
}