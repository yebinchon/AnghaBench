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
struct receive_sc {int dummy; } ;
struct hostapd_data {int /*<<< orphan*/  drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* delete_receive_sc ) (int /*<<< orphan*/ ,struct receive_sc*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct receive_sc*) ; 

__attribute__((used)) static int FUNC1(void *priv, struct receive_sc *sc)
{
	struct hostapd_data *hapd = priv;

	if (!hapd->driver->delete_receive_sc)
		return -1;
	return hapd->driver->delete_receive_sc(hapd->drv_priv, sc);
}