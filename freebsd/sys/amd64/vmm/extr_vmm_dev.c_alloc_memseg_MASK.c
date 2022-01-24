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
struct vmmdev_softc {int /*<<< orphan*/  vm; } ;
struct vm_memseg {int /*<<< orphan*/  segid; int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_VMMDEV ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC0 (struct vm_memseg*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct vmmdev_softc *sc, struct vm_memseg *mseg)
{
	char *name;
	int error;
	bool sysmem;

	error = 0;
	name = NULL;
	sysmem = true;

	/*
	 * The allocation is lengthened by 1 to hold a terminating NUL.  It'll
	 * by stripped off when devfs processes the full string.
	 */
	if (FUNC0(mseg)) {
		sysmem = false;
		name = FUNC4(sizeof(mseg->name), M_VMMDEV, M_WAITOK);
		error = FUNC1(mseg->name, name, sizeof(mseg->name), NULL);
		if (error)
			goto done;
	}

	error = FUNC5(sc->vm, mseg->segid, mseg->len, sysmem);
	if (error)
		goto done;

	if (FUNC0(mseg)) {
		error = FUNC2(FUNC7(sc->vm), mseg->segid, name);
		if (error)
			FUNC6(sc->vm, mseg->segid);
		else
			name = NULL;	/* freed when 'cdev' is destroyed */
	}
done:
	FUNC3(name, M_VMMDEV);
	return (error);
}