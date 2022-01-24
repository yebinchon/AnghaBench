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
struct auth_zones {int /*<<< orphan*/  xtree; int /*<<< orphan*/  lock; int /*<<< orphan*/  ztree; } ;

/* Variables and functions */
 int /*<<< orphan*/  auth_xfer_cmp ; 
 int /*<<< orphan*/  auth_zone_cmp ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct auth_zones* FUNC5(void)
{
	struct auth_zones* az = (struct auth_zones*)FUNC0(1, sizeof(*az));
	if(!az) {
		FUNC3("out of memory");
		return NULL;
	}
	FUNC4(&az->ztree, &auth_zone_cmp);
	FUNC4(&az->xtree, &auth_xfer_cmp);
	FUNC2(&az->lock);
	FUNC1(&az->lock, &az->ztree, sizeof(az->ztree));
	FUNC1(&az->lock, &az->xtree, sizeof(az->xtree));
	/* also lock protects the rbnode's in struct auth_zone, auth_xfer */
	return az;
}