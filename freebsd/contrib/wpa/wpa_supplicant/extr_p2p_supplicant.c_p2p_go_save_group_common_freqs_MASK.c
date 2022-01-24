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
struct wpa_supplicant {unsigned int p2p_group_common_freqs_num; TYPE_1__* go_params; scalar_t__* p2p_group_common_freqs; } ;
struct p2p_go_neg_results {int dummy; } ;
struct TYPE_2__ {scalar_t__* freq_list; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__*) ; 
 scalar_t__* FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 

__attribute__((used)) static void FUNC3(struct wpa_supplicant *wpa_s,
					   struct p2p_go_neg_results *params)
{
	unsigned int i, len = FUNC0(wpa_s->go_params->freq_list);

	wpa_s->p2p_group_common_freqs_num = 0;
	FUNC2(wpa_s->p2p_group_common_freqs);
	wpa_s->p2p_group_common_freqs = FUNC1(len, sizeof(int));
	if (!wpa_s->p2p_group_common_freqs)
		return;

	for (i = 0; i < len; i++) {
		if (!wpa_s->go_params->freq_list[i])
			break;
		wpa_s->p2p_group_common_freqs[i] =
			wpa_s->go_params->freq_list[i];
	}
	wpa_s->p2p_group_common_freqs_num = i;
}