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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct module_env {int dummy; } ;
struct auth_zones {int /*<<< orphan*/  lock; } ;
struct auth_xfer {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct auth_xfer* FUNC0 (struct auth_zones*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct auth_xfer*,struct module_env*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(struct auth_zones* az,
	struct module_env* env, uint8_t* nm, size_t nmlen, uint16_t dclass)
{
	struct auth_xfer* xfr;
	FUNC2(&az->lock);
	xfr = FUNC0(az, nm, nmlen, dclass);
	if(!xfr) {
		FUNC3(&az->lock);
		return 0;
	}
	FUNC1(&xfr->lock);
	FUNC3(&az->lock);

	FUNC4(xfr, env, 0, 0, NULL);
	return 1;
}