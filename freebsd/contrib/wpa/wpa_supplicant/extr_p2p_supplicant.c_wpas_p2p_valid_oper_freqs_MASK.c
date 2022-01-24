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
struct wpa_used_freq_data {int /*<<< orphan*/  freq; } ;
struct wpa_supplicant {TYPE_1__* global; int /*<<< orphan*/  num_multichan_concurrent; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,char*,struct wpa_used_freq_data*,unsigned int) ; 
 unsigned int FUNC1 (struct wpa_supplicant*,struct wpa_used_freq_data*,int /*<<< orphan*/ ) ; 
 struct wpa_used_freq_data* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_used_freq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_used_freq_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC6(struct wpa_supplicant *wpa_s,
			  struct wpa_used_freq_data *p2p_freqs,
			  unsigned int len)
{
	struct wpa_used_freq_data *freqs;
	unsigned int num, i, j;

	freqs = FUNC2(wpa_s->num_multichan_concurrent,
			  sizeof(struct wpa_used_freq_data));
	if (!freqs)
		return 0;

	num = FUNC1(wpa_s, freqs,
					  wpa_s->num_multichan_concurrent);

	FUNC4(p2p_freqs, 0, sizeof(struct wpa_used_freq_data) * len);

	for (i = 0, j = 0; i < num && j < len; i++) {
		if (FUNC5(wpa_s->global->p2p, freqs[i].freq))
			p2p_freqs[j++] = freqs[i];
	}

	FUNC3(freqs);

	FUNC0(wpa_s, "valid for P2P", p2p_freqs, j);

	return j;
}