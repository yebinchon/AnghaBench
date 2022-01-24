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
struct wpa_supplicant {int* p2p_group_common_freqs; unsigned int p2p_group_common_freqs_num; int /*<<< orphan*/  p2p_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 unsigned int P2P_MAX_CHANNELS ; 
 int* FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct wpa_supplicant *wpa_s)
{
	unsigned int num = P2P_MAX_CHANNELS;
	int *common_freqs;
	int ret;

	FUNC2(wpa_s);
	common_freqs = FUNC0(num, sizeof(int));
	if (!common_freqs)
		return;

	ret = FUNC3(wpa_s->p2p_group, common_freqs, &num);
	if (ret < 0) {
		FUNC4(wpa_s, MSG_DEBUG,
			"P2P: Failed to get group common freqs");
		FUNC1(common_freqs);
		return;
	}

	FUNC1(wpa_s->p2p_group_common_freqs);
	wpa_s->p2p_group_common_freqs = common_freqs;
	wpa_s->p2p_group_common_freqs_num = num;
	FUNC2(wpa_s);
}