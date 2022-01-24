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
struct procstat_core {scalar_t__ pc_magic; int /*<<< orphan*/  pc_fd; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ PROCSTAT_CORE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bool
FUNC4(struct procstat_core *core, void *buf, size_t len)
{
	ssize_t n;

	FUNC0(core->pc_magic == PROCSTAT_CORE_MAGIC);

	n = FUNC1(core->pc_fd, buf, len);
	if (n == -1) {
		FUNC2("core: read");
		return (false);
	}
	if (n < (ssize_t)len) {
		FUNC3("core: short read");
		return (false);
	}
	return (true);
}