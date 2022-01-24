#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wpa_used_freq_data {int freq; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_modes; int /*<<< orphan*/  modes; } ;
struct wpa_supplicant {int drv_flags; TYPE_3__* global; TYPE_2__* conf; TYPE_1__ hw; int /*<<< orphan*/  num_multichan_concurrent; } ;
typedef  enum wpa_driver_if_type { ____Placeholder_wpa_driver_if_type } wpa_driver_if_type ;
struct TYPE_6__ {int /*<<< orphan*/  p2p; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_p2p_pref_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WPA_DRIVER_FLAGS_DFS_OFFLOAD ; 
 int WPA_IF_P2P_CLIENT ; 
 int WPA_IF_P2P_GO ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpa_used_freq_data* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_used_freq_data*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct wpa_supplicant*,int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC7 (TYPE_3__*,unsigned int) ; 
 int FUNC8 (struct wpa_supplicant*) ; 
 int FUNC9 (struct wpa_supplicant*,struct wpa_used_freq_data*,unsigned int) ; 
 unsigned int FUNC10 (struct wpa_supplicant*,struct wpa_used_freq_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct wpa_supplicant *wpa_s, int freq,
				int *force_freq, int *pref_freq, int go,
				unsigned int *pref_freq_list,
				unsigned int *num_pref_freq)
{
	struct wpa_used_freq_data *freqs;
	int res, best_freq, num_unused;
	unsigned int freq_in_use = 0, num, i, max_pref_freq;

	max_pref_freq = *num_pref_freq;
	*num_pref_freq = 0;

	freqs = FUNC1(wpa_s->num_multichan_concurrent,
			  sizeof(struct wpa_used_freq_data));
	if (!freqs)
		return -1;

	num = FUNC10(wpa_s, freqs,
					wpa_s->num_multichan_concurrent);

	/*
	 * It is possible that the total number of used frequencies is bigger
	 * than the number of frequencies used for P2P, so get the system wide
	 * number of unused frequencies.
	 */
	num_unused = FUNC8(wpa_s);

	FUNC6(MSG_DEBUG,
		   "P2P: Setup freqs: freq=%d num_MCC=%d shared_freqs=%u num_unused=%d",
		   freq, wpa_s->num_multichan_concurrent, num, num_unused);

	if (freq > 0) {
		int ret;
		if (go)
			ret = FUNC3(wpa_s->global->p2p, freq);
		else
			ret = FUNC4(wpa_s->global->p2p, freq);
		if (!ret) {
			if ((wpa_s->drv_flags & WPA_DRIVER_FLAGS_DFS_OFFLOAD) &&
			    FUNC0(freq, wpa_s->hw.modes,
					     wpa_s->hw.num_modes)) {
				/*
				 * If freq is a DFS channel and DFS is offloaded
				 * to the driver, allow P2P GO to use it.
				 */
				FUNC6(MSG_DEBUG,
					   "P2P: The forced channel for GO (%u MHz) is DFS, and DFS is offloaded to the driver",
					   freq);
			} else {
				FUNC6(MSG_DEBUG,
					   "P2P: The forced channel (%u MHz) is not supported for P2P uses",
					   freq);
				res = -3;
				goto exit_free;
			}
		}

		for (i = 0; i < num; i++) {
			if (freqs[i].freq == freq)
				freq_in_use = 1;
		}

		if (num_unused <= 0 && !freq_in_use) {
			FUNC6(MSG_DEBUG, "P2P: Cannot start P2P group on %u MHz as there are no available channels",
				   freq);
			res = -2;
			goto exit_free;
		}
		FUNC6(MSG_DEBUG, "P2P: Trying to force us to use the "
			   "requested channel (%u MHz)", freq);
		*force_freq = freq;
		goto exit_ok;
	}

	best_freq = FUNC9(wpa_s, freqs, num);

	if (!wpa_s->conf->num_p2p_pref_chan && *pref_freq == 0) {
		enum wpa_driver_if_type iface_type;

		if (go)
			iface_type = WPA_IF_P2P_GO;
		else
			iface_type = WPA_IF_P2P_CLIENT;

		FUNC6(MSG_DEBUG, "P2P: best_freq=%d, go=%d",
			   best_freq, go);

		res = FUNC5(wpa_s, iface_type,
						 &max_pref_freq,
						 pref_freq_list);
		if (!res && max_pref_freq > 0) {
			*num_pref_freq = max_pref_freq;
			i = 0;
			while (i < *num_pref_freq &&
			       (!FUNC3(wpa_s->global->p2p,
						    pref_freq_list[i]) ||
				FUNC7(wpa_s->global,
							 pref_freq_list[i]))) {
				FUNC6(MSG_DEBUG,
					   "P2P: preferred_freq_list[%d]=%d is disallowed",
					   i, pref_freq_list[i]);
				i++;
			}
			if (i != *num_pref_freq) {
				best_freq = pref_freq_list[i];
				FUNC6(MSG_DEBUG,
					   "P2P: Using preferred_freq_list[%d]=%d",
					   i, best_freq);
			} else {
				FUNC6(MSG_DEBUG,
					   "P2P: All driver preferred frequencies are disallowed for P2P use");
				*num_pref_freq = 0;
			}
		} else {
			FUNC6(MSG_DEBUG,
				   "P2P: No preferred frequency list available");
		}
	}

	/* We have a candidate frequency to use */
	if (best_freq > 0) {
		if (*pref_freq == 0 && num_unused > 0) {
			FUNC6(MSG_DEBUG, "P2P: Try to prefer a frequency (%u MHz) we are already using",
				   best_freq);
			*pref_freq = best_freq;
		} else {
			FUNC6(MSG_DEBUG, "P2P: Try to force us to use frequency (%u MHz) which is already in use",
				   best_freq);
			*force_freq = best_freq;
		}
	} else if (num_unused > 0) {
		FUNC6(MSG_DEBUG,
			   "P2P: Current operating channels are not available for P2P. Try to use another channel");
		*force_freq = 0;
	} else {
		FUNC6(MSG_DEBUG,
			   "P2P: All channels are in use and none of them are P2P enabled. Cannot start P2P group");
		res = -2;
		goto exit_free;
	}

exit_ok:
	res = 0;
exit_free:
	FUNC2(freqs);
	return res;
}