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
struct module {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GID_WHEEL ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  krping_cdevsw ; 
 int /*<<< orphan*/  krping_dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(struct module *m, int what, void *arg)
{
	int err = 0;

	switch (what) {
	case MOD_LOAD:                /* kldload */
		krping_dev = FUNC1(&krping_cdevsw, 0, UID_ROOT, GID_WHEEL,
					0600, "krping");
		FUNC2("Krping device loaded.\n");
		break;
	case MOD_UNLOAD:
		FUNC0(krping_dev);
		FUNC2("Krping device unloaded.\n");
		break;
	default:
		err = EOPNOTSUPP;
		break;
	}

	return (err);
}