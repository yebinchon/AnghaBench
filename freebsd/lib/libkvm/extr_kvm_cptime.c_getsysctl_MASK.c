#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  program; } ;
typedef  TYPE_1__ kvm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,void*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(kvm_t *kd, const char *name, void *buf, size_t len)
{
	size_t nlen;

	nlen = len;
	if (FUNC2(name, buf, &nlen, NULL, 0) < 0) {
		FUNC0(kd, kd->program, "cannot read sysctl %s:%s", name,
		    FUNC1(errno));
		return (-1);
	}
	if (nlen != len) {
		FUNC0(kd, kd->program, "sysctl %s has unexpected size",
		    name);
		return (-1);
	}
	return (0);
}