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
struct wpa_driver_ndis_data {int /*<<< orphan*/  capa; int /*<<< orphan*/  has_capability; } ;
struct wpa_driver_capa {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_driver_capa*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(void *priv, struct wpa_driver_capa *capa)
{
	struct wpa_driver_ndis_data *drv = priv;
	if (!drv->has_capability)
		return -1;
	FUNC0(capa, &drv->capa, sizeof(*capa));
	return 0;
}