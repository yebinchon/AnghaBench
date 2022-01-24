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
struct ptsstat {int dummy; } ;
struct procstat {scalar_t__ type; int /*<<< orphan*/  kd; } ;
struct filestat {int dummy; } ;

/* Variables and functions */
 scalar_t__ PROCSTAT_CORE ; 
 scalar_t__ PROCSTAT_KVM ; 
 scalar_t__ PROCSTAT_SYSCTL ; 
 int /*<<< orphan*/  _POSIX2_LINE_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct ptsstat*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct filestat*,struct ptsstat*,char*) ; 
 int FUNC2 (struct filestat*,struct ptsstat*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

int
FUNC5(struct procstat *procstat, struct filestat *fst,
    struct ptsstat *pts, char *errbuf)
{

	FUNC0(pts);
	if (procstat->type == PROCSTAT_KVM) {
		return (FUNC1(procstat->kd, fst, pts,
		    errbuf));
	} else if (procstat->type == PROCSTAT_SYSCTL ||
		procstat->type == PROCSTAT_CORE) {
		return (FUNC2(fst, pts, errbuf));
	} else {
		FUNC4("unknown access method: %d", procstat->type);
		if (errbuf != NULL)
			FUNC3(errbuf, _POSIX2_LINE_MAX, "error");
		return (1);
	}
}