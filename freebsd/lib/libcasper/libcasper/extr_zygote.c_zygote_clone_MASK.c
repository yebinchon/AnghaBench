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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int ENXIO ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int zygote_sock ; 

int
FUNC7(uint64_t funcidx, int *chanfdp, int *procfdp)
{
	nvlist_t *nvl;
	int error;

	if (zygote_sock == -1) {
		/* Zygote didn't start. */
		errno = ENXIO;
		return (-1);
	}

	nvl = FUNC1(0);
	FUNC0(nvl, "funcidx", funcidx);
	nvl = FUNC6(zygote_sock, nvl, 0);
	if (nvl == NULL)
		return (-1);
	if (FUNC3(nvl, "error")) {
		error = (int)FUNC4(nvl, "error");
		FUNC2(nvl);
		errno = error;
		return (-1);
	}

	*chanfdp = FUNC5(nvl, "chanfd");
	*procfdp = FUNC5(nvl, "procfd");

	FUNC2(nvl);
	return (0);
}