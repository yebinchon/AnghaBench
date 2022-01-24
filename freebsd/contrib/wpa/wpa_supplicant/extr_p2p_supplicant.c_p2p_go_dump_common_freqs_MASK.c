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
struct wpa_supplicant {unsigned int p2p_group_common_freqs_num; int /*<<< orphan*/ * p2p_group_common_freqs; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int P2P_MAX_CHANNELS ; 
 int FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC3(struct wpa_supplicant *wpa_s)
{
	char buf[20 + P2P_MAX_CHANNELS * 6];
	char *pos, *end;
	unsigned int i;
	int res;

	pos = buf;
	end = pos + sizeof(buf);
	for (i = 0; i < wpa_s->p2p_group_common_freqs_num; i++) {
		res = FUNC0(pos, end - pos, " %d",
				  wpa_s->p2p_group_common_freqs[i]);
		if (FUNC1(end - pos, res))
			break;
		pos += res;
	}
	*pos = '\0';

	FUNC2(wpa_s, MSG_DEBUG, "P2P: Common group frequencies:%s", buf);
}