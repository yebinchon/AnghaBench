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
struct wpa_used_freq_data {int dummy; } ;
struct wpa_supplicant {unsigned int num_multichan_concurrent; TYPE_1__* global; } ;
struct p2p_channels {int dummy; } ;
typedef  enum wpas_p2p_channel_update_trig { ____Placeholder_wpas_p2p_channel_update_trig } wpas_p2p_channel_update_trig ;
typedef  int /*<<< orphan*/  cli_chan ;
typedef  int /*<<< orphan*/  chan ;
struct TYPE_2__ {int /*<<< orphan*/ * p2p; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 unsigned int FUNC0 (struct wpa_supplicant*,struct wpa_used_freq_data*,unsigned int) ; 
 struct wpa_used_freq_data* FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_used_freq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_channels*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct p2p_channels*,struct p2p_channels*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_supplicant*,struct wpa_used_freq_data*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_supplicant*,struct wpa_used_freq_data*,unsigned int) ; 
 scalar_t__ FUNC8 (struct wpa_supplicant*,struct p2p_channels*,struct p2p_channels*) ; 

void FUNC9(struct wpa_supplicant *wpa_s,
				  enum wpas_p2p_channel_update_trig trig)
{
	struct p2p_channels chan, cli_chan;
	struct wpa_used_freq_data *freqs = NULL;
	unsigned int num = wpa_s->num_multichan_concurrent;

	if (wpa_s->global == NULL || wpa_s->global->p2p == NULL)
		return;

	freqs = FUNC1(num, sizeof(struct wpa_used_freq_data));
	if (!freqs)
		return;

	num = FUNC0(wpa_s, freqs, num);

	FUNC3(&chan, 0, sizeof(chan));
	FUNC3(&cli_chan, 0, sizeof(cli_chan));
	if (FUNC8(wpa_s, &chan, &cli_chan)) {
		FUNC5(MSG_ERROR, "P2P: Failed to update supported "
			   "channel list");
		return;
	}

	FUNC4(wpa_s->global->p2p, &chan, &cli_chan);

	FUNC7(wpa_s, freqs, num);

	/*
	 * The used frequencies map changed, so it is possible that a GO is
	 * using a channel that is no longer valid for P2P use. It is also
	 * possible that due to policy consideration, it would be preferable to
	 * move it to a frequency already used by other station interfaces.
	 */
	FUNC6(wpa_s, freqs, num, trig);

	FUNC2(freqs);
}