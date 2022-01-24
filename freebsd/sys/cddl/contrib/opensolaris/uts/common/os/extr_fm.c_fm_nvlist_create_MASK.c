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
typedef  int /*<<< orphan*/  nv_alloc_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  fm_mem_alloc_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

nvlist_t *
FUNC5(nv_alloc_t *nva)
{
	int hdl_alloced = 0;
	nvlist_t *nvl;
	nv_alloc_t *nvhdl;

	if (nva == NULL) {
		nvhdl = FUNC1(sizeof (nv_alloc_t), KM_SLEEP);

		if (FUNC3(nvhdl, &fm_mem_alloc_ops, NULL, 0) != 0) {
			FUNC0(nvhdl, sizeof (nv_alloc_t));
			return (NULL);
		}
		hdl_alloced = 1;
	} else {
		nvhdl = nva;
	}

	if (FUNC4(&nvl, NV_UNIQUE_NAME, nvhdl) != 0) {
		if (hdl_alloced) {
			FUNC2(nvhdl);
			FUNC0(nvhdl, sizeof (nv_alloc_t));
		}
		return (NULL);
	}

	return (nvl);
}