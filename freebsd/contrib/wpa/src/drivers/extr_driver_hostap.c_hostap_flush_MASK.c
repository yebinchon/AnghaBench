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
struct prism2_hostapd_param {int /*<<< orphan*/  cmd; } ;
struct hostap_driver_data {int dummy; } ;
typedef  int /*<<< orphan*/  param ;

/* Variables and functions */
 int /*<<< orphan*/  PRISM2_HOSTAPD_FLUSH ; 
 int FUNC0 (struct hostap_driver_data*,struct prism2_hostapd_param*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct prism2_hostapd_param*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(void *priv)
{
	struct hostap_driver_data *drv = priv;
	struct prism2_hostapd_param param;

	FUNC1(&param, 0, sizeof(param));
	param.cmd = PRISM2_HOSTAPD_FLUSH;
	return FUNC0(drv, &param, sizeof(param));
}