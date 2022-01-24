#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {int dummy; } ;
struct wpa_driver_scan_params {int num_ssids; int* freqs; TYPE_1__* ssids; } ;
struct bgscan_learn_data {int /*<<< orphan*/  last_bgscan; int /*<<< orphan*/  scan_interval; TYPE_2__* ssid; struct wpa_supplicant* wpa_s; } ;
typedef  int /*<<< orphan*/  params ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_4__ {int* scan_freq; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;
struct TYPE_3__ {int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int* FUNC0 (struct bgscan_learn_data*,size_t*) ; 
 int* FUNC1 (struct bgscan_learn_data*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (void*,void*),struct bgscan_learn_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_driver_scan_params*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char*,int,char*,int) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC9 (struct wpa_supplicant*,struct wpa_driver_scan_params*) ; 

__attribute__((used)) static void FUNC10(void *eloop_ctx, void *timeout_ctx)
{
	struct bgscan_learn_data *data = eloop_ctx;
	struct wpa_supplicant *wpa_s = data->wpa_s;
	struct wpa_driver_scan_params params;
	int *freqs = NULL;
	size_t count, i;
	char msg[100], *pos;

	FUNC5(&params, 0, sizeof(params));
	params.num_ssids = 1;
	params.ssids[0].ssid = data->ssid->ssid;
	params.ssids[0].ssid_len = data->ssid->ssid_len;
	if (data->ssid->scan_freq)
		params.freqs = data->ssid->scan_freq;
	else {
		freqs = FUNC0(data, &count);
		FUNC8(MSG_DEBUG, "bgscan learn: BSSes in this ESS have "
			   "been seen on %u channels", (unsigned int) count);
		freqs = FUNC1(data, freqs, count);

		msg[0] = '\0';
		pos = msg;
		for (i = 0; freqs && freqs[i]; i++) {
			int ret;
			ret = FUNC6(pos, msg + sizeof(msg) - pos, " %d",
					  freqs[i]);
			if (FUNC7(msg + sizeof(msg) - pos, ret))
				break;
			pos += ret;
		}
		pos[0] = '\0';
		FUNC8(MSG_DEBUG, "bgscan learn: Scanning frequencies:%s",
			   msg);
		params.freqs = freqs;
	}

	FUNC8(MSG_DEBUG, "bgscan learn: Request a background scan");
	if (FUNC9(wpa_s, &params)) {
		FUNC8(MSG_DEBUG, "bgscan learn: Failed to trigger scan");
		FUNC2(data->scan_interval, 0,
				       bgscan_learn_timeout, data, NULL);
	} else
		FUNC4(&data->last_bgscan);
	FUNC3(freqs);
}