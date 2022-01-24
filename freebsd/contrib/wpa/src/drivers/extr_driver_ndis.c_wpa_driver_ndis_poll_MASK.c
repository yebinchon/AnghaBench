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
struct wpa_driver_ndis_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (struct wpa_driver_ndis_data*,int /*<<< orphan*/ *),struct wpa_driver_ndis_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_driver_ndis_data*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *priv)
{
	struct wpa_driver_ndis_data *drv = priv;
	FUNC0(wpa_driver_ndis_poll_timeout, drv, NULL);
	FUNC1(drv, NULL);
}