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

/* Variables and functions */
 int /*<<< orphan*/  PSC_TYPE_OSREL ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (struct procstat_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static int
FUNC2(struct procstat_core *core, int *osrelp)
{
	size_t len;
	int *buf;

	buf = FUNC1(core, PSC_TYPE_OSREL, NULL, &len);
	if (buf == NULL)
		return (-1);
	if (len < sizeof(*osrelp)) {
		FUNC0(buf);
		return (-1);
	}
	*osrelp = *buf;
	FUNC0(buf);
	return (0);
}