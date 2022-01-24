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

/* Variables and functions */
 int /*<<< orphan*/  EXFLAG_NOALLOC ; 
 int /*<<< orphan*/  EXFLAG_NODUMP ; 
 int /*<<< orphan*/  Maxmem ; 
 int /*<<< orphan*/  PHYS_AVAIL_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dump_avail ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * phys_avail ; 
 int /*<<< orphan*/  physmem ; 
 int /*<<< orphan*/  realmem ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3(void)
{
	size_t nextidx;

	FUNC2(dump_avail, EXFLAG_NODUMP, PHYS_AVAIL_ENTRIES, NULL,
	    NULL);
	nextidx = FUNC2(phys_avail, EXFLAG_NOALLOC,
	    PHYS_AVAIL_ENTRIES, &physmem, &realmem);
	if (nextidx == 0)
		FUNC1("No memory entries in phys_avail");
	Maxmem = FUNC0(phys_avail[nextidx - 1]);
}