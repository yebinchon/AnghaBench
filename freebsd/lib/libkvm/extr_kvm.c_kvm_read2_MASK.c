#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_9__ {int /*<<< orphan*/  program; int /*<<< orphan*/  pmfd; TYPE_1__* arch; int /*<<< orphan*/  vmfd; } ;
typedef  TYPE_2__ kvm_t ;
typedef  int kvaddr_t ;
struct TYPE_8__ {int (* ka_kvatop ) (TYPE_2__*,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 char* _PATH_MEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 

ssize_t
FUNC6(kvm_t *kd, kvaddr_t kva, void *buf, size_t len)
{
	int cc;
	ssize_t cr;
	off_t pa;
	char *cp;

	if (FUNC0(kd)) {
		/*
		 * We're using /dev/kmem.  Just read straight from the
		 * device and let the active kernel do the address translation.
		 */
		errno = 0;
		if (FUNC3(kd->vmfd, (off_t)kva, 0) == -1 && errno != 0) {
			FUNC1(kd, 0, "invalid address (0x%jx)",
			    (uintmax_t)kva);
			return (-1);
		}
		cr = FUNC4(kd->vmfd, buf, len);
		if (cr < 0) {
			FUNC2(kd, 0, "kvm_read");
			return (-1);
		} else if (cr < (ssize_t)len)
			FUNC1(kd, kd->program, "short read");
		return (cr);
	}

	cp = buf;
	while (len > 0) {
		cc = kd->arch->ka_kvatop(kd, kva, &pa);
		if (cc == 0)
			return (-1);
		if (cc > (ssize_t)len)
			cc = len;
		errno = 0;
		if (FUNC3(kd->pmfd, pa, 0) == -1 && errno != 0) {
			FUNC2(kd, 0, _PATH_MEM);
			break;
		}
		cr = FUNC4(kd->pmfd, cp, cc);
		if (cr < 0) {
			FUNC2(kd, kd->program, "kvm_read");
			break;
		}
		/*
		 * If ka_kvatop returns a bogus value or our core file is
		 * truncated, we might wind up seeking beyond the end of the
		 * core file in which case the read will return 0 (EOF).
		 */
		if (cr == 0)
			break;
		cp += cr;
		kva += cr;
		len -= cr;
	}

	return (cp - (char *)buf);
}