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
struct procstat {int /*<<< orphan*/ * kd; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROCSTAT_KVM ; 
 int _POSIX2_LINE_MAX ; 
 struct procstat* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct procstat*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

struct procstat *
FUNC5(const char *nlistf, const char *memf)
{
	struct procstat *procstat;
	kvm_t *kd;
	char buf[_POSIX2_LINE_MAX];

	procstat = FUNC0(1, sizeof(*procstat));
	if (procstat == NULL) {
		FUNC3("malloc()");
		return (NULL);
	}
	kd = FUNC2(nlistf, memf, NULL, O_RDONLY, buf);
	if (kd == NULL) {
		FUNC4("kvm_openfiles(): %s", buf);
		FUNC1(procstat);
		return (NULL);
	}
	procstat->type = PROCSTAT_KVM;
	procstat->kd = kd;
	return (procstat);
}