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
struct auth_ops {int /*<<< orphan*/  ah_destroy; int /*<<< orphan*/  ah_refresh; int /*<<< orphan*/  ah_validate; int /*<<< orphan*/  ah_marshal; int /*<<< orphan*/ * ah_nextverf; } ;

/* Variables and functions */
 int /*<<< orphan*/  authdes_destroy ; 
 int /*<<< orphan*/  authdes_marshal ; 
 int /*<<< orphan*/ * authdes_nextverf ; 
 int /*<<< orphan*/  authdes_ops_lock ; 
 int /*<<< orphan*/  authdes_refresh ; 
 int /*<<< orphan*/  authdes_validate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct auth_ops *
FUNC2(void)
{
	static struct auth_ops ops;

	/* VARIABLES PROTECTED BY ops_lock: ops */
 
	FUNC0(&authdes_ops_lock);
	if (ops.ah_nextverf == NULL) {
		ops.ah_nextverf = authdes_nextverf;
		ops.ah_marshal = authdes_marshal;
		ops.ah_validate = authdes_validate;
		ops.ah_refresh = authdes_refresh;
		ops.ah_destroy = authdes_destroy;
        }
	FUNC1(&authdes_ops_lock);
	return (&ops);
}