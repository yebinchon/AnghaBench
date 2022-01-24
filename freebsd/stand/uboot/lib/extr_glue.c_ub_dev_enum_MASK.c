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
struct device_info {int /*<<< orphan*/ * cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  API_DEV_ENUM ; 
 int UB_MAX_DEV ; 
 struct device_info* devices ; 
 int /*<<< orphan*/  FUNC0 (struct device_info**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct device_info*) ; 

int
FUNC2(void)
{
	struct device_info *di;
	int n = 0;

	FUNC0(&devices, 0, sizeof(struct device_info) * UB_MAX_DEV);
	di = &devices[0];

	if (!FUNC1(API_DEV_ENUM, NULL, di))
		return (0);

	while (di->cookie != NULL) {

		if (++n >= UB_MAX_DEV)
			break;

		/* take another device_info */
		di++;

		/* pass on the previous cookie */
		di->cookie = devices[n - 1].cookie;

		if (!FUNC1(API_DEV_ENUM, NULL, di))
			return (0);
	}

	return (n);
}