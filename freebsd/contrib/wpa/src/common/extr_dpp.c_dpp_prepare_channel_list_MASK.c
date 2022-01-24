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
typedef  int /*<<< orphan*/  u16 ;
struct hostapd_hw_modes {int dummy; } ;
struct dpp_authentication {unsigned int num_freq; int /*<<< orphan*/ * freq; int /*<<< orphan*/  curr_freq; scalar_t__ freq_idx; TYPE_1__* peer_bi; } ;
typedef  int /*<<< orphan*/  freqs ;
struct TYPE_2__ {scalar_t__ num_freq; } ;

/* Variables and functions */
 int DPP_BOOTSTRAP_MAX_FREQ ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (struct dpp_authentication*,struct hostapd_hw_modes*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dpp_authentication*,struct hostapd_hw_modes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,int) ; 
 int FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC6(struct dpp_authentication *auth,
				    struct hostapd_hw_modes *own_modes,
				    u16 num_modes)
{
	int res;
	char freqs[DPP_BOOTSTRAP_MAX_FREQ * 6 + 10], *pos, *end;
	unsigned int i;

	if (auth->peer_bi->num_freq > 0)
		res = FUNC0(auth, own_modes, num_modes);
	else
		res = FUNC1(auth, own_modes, num_modes);
	if (res < 0)
		return res;

	/* Prioritize 2.4 GHz channels 6, 1, 11 (in this order) to hit the most
	 * likely channels first. */
	FUNC2(auth->freq, auth->num_freq, 2462);
	FUNC2(auth->freq, auth->num_freq, 2412);
	FUNC2(auth->freq, auth->num_freq, 2437);

	auth->freq_idx = 0;
	auth->curr_freq = auth->freq[0];

	pos = freqs;
	end = pos + sizeof(freqs);
	for (i = 0; i < auth->num_freq; i++) {
		res = FUNC3(pos, end - pos, " %u", auth->freq[i]);
		if (FUNC4(end - pos, res))
			break;
		pos += res;
	}
	*pos = '\0';
	FUNC5(MSG_DEBUG, "DPP: Possible frequencies for initiating:%s",
		   freqs);

	return 0;
}