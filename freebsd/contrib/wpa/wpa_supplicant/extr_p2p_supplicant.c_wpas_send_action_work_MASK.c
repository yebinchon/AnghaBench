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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int dummy; } ;
struct send_action_work {unsigned int freq; size_t len; unsigned int wait_time; int /*<<< orphan*/  buf; int /*<<< orphan*/  bssid; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct send_action_work*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 struct send_action_work* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct wpa_supplicant*,unsigned int,char*,int,int /*<<< orphan*/ ,struct send_action_work*) ; 
 scalar_t__ FUNC4 (struct wpa_supplicant*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  wpas_send_action_cb ; 

__attribute__((used)) static int FUNC6(struct wpa_supplicant *wpa_s,
				 unsigned int freq, const u8 *dst,
				 const u8 *src, const u8 *bssid, const u8 *buf,
				 size_t len, unsigned int wait_time)
{
	struct send_action_work *awork;

	if (FUNC4(wpa_s, "p2p-send-action")) {
		FUNC5(MSG_DEBUG, "P2P: Cannot schedule new p2p-send-action work since one is already pending");
		return -1;
	}

	awork = FUNC2(sizeof(*awork) + len);
	if (awork == NULL)
		return -1;

	awork->freq = freq;
	FUNC1(awork->dst, dst, ETH_ALEN);
	FUNC1(awork->src, src, ETH_ALEN);
	FUNC1(awork->bssid, bssid, ETH_ALEN);
	awork->len = len;
	awork->wait_time = wait_time;
	FUNC1(awork->buf, buf, len);

	if (FUNC3(wpa_s, freq, "p2p-send-action", 1,
			   wpas_send_action_cb, awork) < 0) {
		FUNC0(awork);
		return -1;
	}

	return 0;
}