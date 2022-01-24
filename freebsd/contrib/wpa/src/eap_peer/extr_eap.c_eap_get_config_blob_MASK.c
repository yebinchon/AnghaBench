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
struct wpa_config_blob {int dummy; } ;
struct eap_sm {int /*<<< orphan*/  eapol_ctx; TYPE_1__* eapol_cb; } ;
struct TYPE_2__ {struct wpa_config_blob const* (* get_config_blob ) (int /*<<< orphan*/ ,char const*) ;} ;

/* Variables and functions */
 struct wpa_config_blob const* FUNC0 (int /*<<< orphan*/ ,char const*) ; 

const struct wpa_config_blob * FUNC1(struct eap_sm *sm,
						   const char *name)
{
#ifndef CONFIG_NO_CONFIG_BLOBS
	return sm->eapol_cb->get_config_blob(sm->eapol_ctx, name);
#else /* CONFIG_NO_CONFIG_BLOBS */
	return NULL;
#endif /* CONFIG_NO_CONFIG_BLOBS */
}