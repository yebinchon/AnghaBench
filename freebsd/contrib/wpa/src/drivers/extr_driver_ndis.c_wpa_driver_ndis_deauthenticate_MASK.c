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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wpa_driver_ndis_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wpa_driver_ndis_data*) ; 

__attribute__((used)) static int FUNC1(void *priv, const u8 *addr,
					  u16 reason_code)
{
	struct wpa_driver_ndis_data *drv = priv;
	return FUNC0(drv);
}