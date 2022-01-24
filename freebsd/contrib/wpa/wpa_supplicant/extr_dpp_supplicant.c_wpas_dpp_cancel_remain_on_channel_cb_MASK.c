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
struct wpa_supplicant {int dpp_listen_freq; TYPE_1__* dpp_auth; scalar_t__ dpp_in_response_listen; } ;
struct TYPE_2__ {unsigned int neg_freq; unsigned int curr_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 

void FUNC3(struct wpa_supplicant *wpa_s,
					  unsigned int freq)
{
	FUNC2(wpa_s);

	if (wpa_s->dpp_auth && wpa_s->dpp_in_response_listen) {
		unsigned int new_freq;

		/* Continue listen with a new remain-on-channel */
		if (wpa_s->dpp_auth->neg_freq > 0)
			new_freq = wpa_s->dpp_auth->neg_freq;
		else
			new_freq = wpa_s->dpp_auth->curr_freq;
		FUNC0(MSG_DEBUG,
			   "DPP: Continue wait on %u MHz for the ongoing DPP provisioning session",
			   new_freq);
		FUNC1(wpa_s, new_freq);
		return;
	}

	if (wpa_s->dpp_listen_freq) {
		/* Continue listen with a new remain-on-channel */
		FUNC1(wpa_s, wpa_s->dpp_listen_freq);
	}
}