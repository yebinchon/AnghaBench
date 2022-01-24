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
struct p2p_data {unsigned int num_pref_freq; unsigned int* pref_freq_list; } ;

/* Variables and functions */
 unsigned int P2P_MAX_PREF_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*,unsigned int,unsigned int) ; 

void FUNC1(struct p2p_data *p2p,
				const unsigned int *pref_freq_list,
				unsigned int size)
{
	unsigned int i;

	if (size > P2P_MAX_PREF_CHANNELS)
		size = P2P_MAX_PREF_CHANNELS;
	p2p->num_pref_freq = size;
	for (i = 0; i < size; i++) {
		p2p->pref_freq_list[i] = pref_freq_list[i];
		FUNC0(p2p, "Own preferred frequency list[%u]=%u MHz",
			i, p2p->pref_freq_list[i]);
	}
}