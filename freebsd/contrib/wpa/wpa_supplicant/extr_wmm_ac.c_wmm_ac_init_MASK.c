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
typedef  size_t u8 ;
struct wpa_supplicant {struct wmm_ac_assoc_data* wmm_ac_assoc_info; int /*<<< orphan*/ * addts_request; scalar_t__ wmm_ac_last_dialog_token; int /*<<< orphan*/  tspecs; } ;
struct wmm_params {int info_bitmap; int uapsd_queues; } ;
struct wmm_ac_assoc_data {TYPE_1__* ac_params; } ;
struct TYPE_2__ {int uapsd; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 size_t WMM_AC_NUM ; 
 int WMM_PARAMS_UAPSD_QUEUES_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct wmm_ac_assoc_data* FUNC2 (struct wpa_supplicant*,size_t const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC4(struct wpa_supplicant *wpa_s, const u8 *ies,
		       size_t ies_len, const struct wmm_params *wmm_params)
{
	struct wmm_ac_assoc_data *assoc_data;
	u8 ac;

	if (wpa_s->wmm_ac_assoc_info) {
		FUNC3(MSG_ERROR, "WMM AC: Already initialized");
		return -1;
	}

	if (!ies || !(wmm_params->info_bitmap & WMM_PARAMS_UAPSD_QUEUES_INFO)) {
		/* WMM AC not in use for this connection */
		return -1;
	}

	FUNC1(wpa_s->tspecs, 0, sizeof(wpa_s->tspecs));
	wpa_s->wmm_ac_last_dialog_token = 0;
	wpa_s->addts_request = NULL;

	assoc_data = FUNC2(wpa_s, ies, ies_len);
	if (!assoc_data)
		return -1;

	FUNC3(MSG_DEBUG, "WMM AC: U-APSD queues=0x%x",
		   wmm_params->uapsd_queues);

	for (ac = 0; ac < WMM_AC_NUM; ac++) {
		assoc_data->ac_params[ac].uapsd =
			!!(wmm_params->uapsd_queues & FUNC0(ac));
	}

	wpa_s->wmm_ac_assoc_info = assoc_data;
	return 0;
}