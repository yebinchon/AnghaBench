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
struct wpa_bss_params {int enabled; } ;
struct hostap_driver_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRISM2_PARAM_HOST_DECRYPT ; 
 int /*<<< orphan*/  PRISM2_PARAM_HOST_ENCRYPT ; 
 int /*<<< orphan*/  PRISM2_PARAM_IEEE_802_1X ; 
 scalar_t__ FUNC0 (struct hostap_driver_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(void *priv, struct wpa_bss_params *params)
{
	struct hostap_driver_data *drv = priv;
	int enabled = params->enabled;

	/* enable kernel driver support for IEEE 802.1X */
	if (FUNC0(drv, PRISM2_PARAM_IEEE_802_1X, enabled)) {
		FUNC1("Could not setup IEEE 802.1X support in kernel driver."
		       "\n");
		return -1;
	}

	if (!enabled)
		return 0;

	/* use host driver implementation of encryption to allow
	 * individual keys and passing plaintext EAPOL frames */
	if (FUNC0(drv, PRISM2_PARAM_HOST_DECRYPT, 1) ||
	    FUNC0(drv, PRISM2_PARAM_HOST_ENCRYPT, 1)) {
		FUNC1("Could not setup host-based encryption in kernel "
		       "driver.\n");
		return -1;
	}

	return 0;
}