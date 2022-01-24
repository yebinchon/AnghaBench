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
 int /*<<< orphan*/ * cma_dev_array ; 
 int cma_dev_cnt ; 
 int cma_init_cnt ; 
 int /*<<< orphan*/  mut ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void)
{
	int i, ret = 0;

	if (!cma_dev_cnt) {
		ret = FUNC2();
		if (ret)
			return ret;
	}

	if (cma_init_cnt == cma_dev_cnt)
		return 0;

	FUNC0(&mut);
	for (i = 0; i < cma_dev_cnt; i++) {
		ret = FUNC3(&cma_dev_array[i]);
		if (ret)
			break;
	}
	FUNC1(&mut);
	return ret;
}