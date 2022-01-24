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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
#define  DATA_TYPE_NVLIST 129 
#define  DATA_TYPE_NVLIST_ARRAY 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(nvpair_t *nvp)
{
	switch (FUNC3(nvp)) {
	case DATA_TYPE_NVLIST:
		FUNC4(FUNC0(nvp));
		break;
	case DATA_TYPE_NVLIST_ARRAY: {
		nvlist_t **nvlp = FUNC1(nvp);
		int i;

		for (i = 0; i < FUNC2(nvp); i++)
			FUNC4(nvlp[i]);
		break;
	}
	default:
		break;
	}
}