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
struct wpa_supplicant {int /*<<< orphan*/  drv_priv; TYPE_1__* driver; } ;
struct wpa_pmkid_params {int dummy; } ;
struct TYPE_2__ {int (* add_pmkid ) (int /*<<< orphan*/ ,struct wpa_pmkid_params*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct wpa_pmkid_params*) ; 

__attribute__((used)) static inline int FUNC1(struct wpa_supplicant *wpa_s,
				    struct wpa_pmkid_params *params)
{
	if (wpa_s->driver->add_pmkid) {
		return wpa_s->driver->add_pmkid(wpa_s->drv_priv, params);
	}
	return -1;
}