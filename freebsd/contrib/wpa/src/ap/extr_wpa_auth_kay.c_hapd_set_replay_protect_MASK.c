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
typedef  int /*<<< orphan*/  u32 ;
struct hostapd_data {int /*<<< orphan*/  drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_replay_protect ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *priv, Boolean enabled, u32 window)
{
	struct hostapd_data *hapd = priv;

	if (!hapd->driver->set_replay_protect)
		return -1;
	return hapd->driver->set_replay_protect(hapd->drv_priv, enabled,
						 window);
}