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
typedef  int uint32_t ;

/* Variables and functions */
 char volatile* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (uintptr_t volatile*,uintptr_t,uintptr_t) ; 
 scalar_t__ FUNC3 (unsigned int*) ; 
 char** hpet_dev_map ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,char const*) ; 

__attribute__((used)) static void
FUNC7(uint32_t u)
{
	static const char devprefix[] = "/dev/hpet";
	char devname[64], *c, *c1, t;
	volatile char *new_map, *old_map;
	unsigned int mode;
	uint32_t u1;
	int fd;

	c1 = c = FUNC6(devname, devprefix);
	u1 = u;
	do {
		*c++ = u1 % 10 + '0';
		u1 /= 10;
	} while (u1 != 0);
	*c = '\0';
	for (c--; c1 != c; c1++, c--) {
		t = *c1;
		*c1 = *c;
		*c = t;
	}

	old_map = hpet_dev_map[u];
	if (old_map != NULL)
		return;

	/*
	 * Explicitely check for the capability mode to avoid
	 * triggering trap_enocap on the device open by absolute path.
	 */
	if ((FUNC3(&mode) == 0 && mode != 0) ||
	    (fd = FUNC1(devname, O_RDONLY)) == -1) {
		/* Prevent the caller from re-entering. */
		FUNC2((volatile uintptr_t *)&hpet_dev_map[u],
		    (uintptr_t)old_map, (uintptr_t)MAP_FAILED);
		return;
	}

	new_map = FUNC4(NULL, PAGE_SIZE, PROT_READ, MAP_SHARED, fd, 0);
	FUNC0(fd);
	if (FUNC2((volatile uintptr_t *)&hpet_dev_map[u],
	    (uintptr_t)old_map, (uintptr_t)new_map) == 0 &&
	    new_map != MAP_FAILED)
		FUNC5((void *)new_map, PAGE_SIZE);
}