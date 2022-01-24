#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct module_env {TYPE_1__* auth_zones; } ;
struct auth_zone {int zone_expired; int /*<<< orphan*/  lock; } ;
struct auth_xfer {int zone_expired; int /*<<< orphan*/  dclass; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct auth_zone* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct auth_xfer* xfr, struct module_env* env,
	int expired)
{
	struct auth_zone* z;

	/* expire xfr */
	FUNC1(&xfr->lock);
	xfr->zone_expired = expired;
	FUNC2(&xfr->lock);

	/* find auth_zone */
	FUNC3(&env->auth_zones->lock);
	z = FUNC0(env->auth_zones, xfr->name, xfr->namelen,
		xfr->dclass);
	if(!z) {
		FUNC4(&env->auth_zones->lock);
		return;
	}
	FUNC5(&z->lock);
	FUNC4(&env->auth_zones->lock);

	/* expire auth_zone */
	z->zone_expired = expired;
	FUNC4(&z->lock);
}