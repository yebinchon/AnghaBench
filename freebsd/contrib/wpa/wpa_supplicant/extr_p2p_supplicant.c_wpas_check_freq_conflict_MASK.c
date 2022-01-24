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
struct wpa_used_freq_data {int freq; } ;
struct wpa_supplicant {int /*<<< orphan*/  num_multichan_concurrent; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct wpa_used_freq_data* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_used_freq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (struct wpa_supplicant*) ; 
 unsigned int FUNC4 (struct wpa_supplicant*,struct wpa_used_freq_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct wpa_supplicant *wpa_s, int freq)
{
	int res;
	unsigned int num, i;
	struct wpa_used_freq_data *freqs;

	if (FUNC3(wpa_s) > 0) {
		/* Multiple channels are supported and not all are in use */
		return 0;
	}

	freqs = FUNC0(wpa_s->num_multichan_concurrent,
			  sizeof(struct wpa_used_freq_data));
	if (!freqs)
		return 1;

	num = FUNC4(wpa_s, freqs,
					wpa_s->num_multichan_concurrent);

	for (i = 0; i < num; i++) {
		if (freqs[i].freq == freq) {
			FUNC2(MSG_DEBUG, "P2P: Frequency %d MHz in use by another virtual interface and can be used",
				   freq);
			res = 0;
			goto exit_free;
		}
	}

	FUNC2(MSG_DEBUG, "P2P: No valid operating frequencies");
	res = 1;

exit_free:
	FUNC1(freqs);
	return res;
}