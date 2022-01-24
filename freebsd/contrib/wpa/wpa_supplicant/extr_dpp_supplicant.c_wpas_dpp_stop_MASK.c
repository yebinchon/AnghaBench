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
struct wpa_supplicant {scalar_t__ dpp_gas_dialog_token; int /*<<< orphan*/  gas; scalar_t__ dpp_gas_client; int /*<<< orphan*/ * dpp_pkex; int /*<<< orphan*/ * dpp_auth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC3(struct wpa_supplicant *wpa_s)
{
	FUNC0(wpa_s->dpp_auth);
	wpa_s->dpp_auth = NULL;
	FUNC1(wpa_s->dpp_pkex);
	wpa_s->dpp_pkex = NULL;
	if (wpa_s->dpp_gas_client && wpa_s->dpp_gas_dialog_token >= 0)
		FUNC2(wpa_s->gas, wpa_s->dpp_gas_dialog_token);
}