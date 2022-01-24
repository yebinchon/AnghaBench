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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  fds ;

/* Variables and functions */
 int* FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int*) ; 

int *
FUNC3(const nvlist_t *nvl, size_t *nitemsp)
{
	size_t nitems;
	int *fds;

	nitems = FUNC1(nvl);
	fds = FUNC0(sizeof(fds[0]) * (nitems + 1));
	if (fds == NULL)
		return (NULL);
	if (nitems > 0)
		FUNC2(nvl, fds);
	fds[nitems] = -1;
	if (nitemsp != NULL)
		*nitemsp = nitems;
	return (fds);
}