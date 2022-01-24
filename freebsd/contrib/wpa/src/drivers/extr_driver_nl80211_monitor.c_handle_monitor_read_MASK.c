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
struct wpa_driver_nl80211_data {int /*<<< orphan*/  ctx; } ;
struct ieee80211_radiotap_iterator {int this_arg_index; int* this_arg; int _max_length; } ;
typedef  int s8 ;
typedef  int /*<<< orphan*/  le16 ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ENOENT ; 
#define  IEEE80211_RADIOTAP_CHANNEL 134 
#define  IEEE80211_RADIOTAP_DATA_RETRIES 133 
#define  IEEE80211_RADIOTAP_DBM_ANTSIGNAL 132 
#define  IEEE80211_RADIOTAP_FLAGS 131 
 int IEEE80211_RADIOTAP_F_FCS ; 
 int IEEE80211_RADIOTAP_F_TX_FAIL ; 
#define  IEEE80211_RADIOTAP_RATE 130 
#define  IEEE80211_RADIOTAP_RX_FLAGS 129 
#define  IEEE80211_RADIOTAP_TX_FLAGS 128 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_driver_nl80211_data*,unsigned char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int,int) ; 
 scalar_t__ FUNC2 (struct ieee80211_radiotap_iterator*,void*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ieee80211_radiotap_iterator*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC8(int sock, void *eloop_ctx, void *sock_ctx)
{
	struct wpa_driver_nl80211_data *drv = eloop_ctx;
	int len;
	unsigned char buf[3000];
	struct ieee80211_radiotap_iterator iter;
	int ret;
	int datarate = 0, ssi_signal = 0;
	int injected = 0, failed = 0, rxflags = 0;

	len = FUNC5(sock, buf, sizeof(buf), 0);
	if (len < 0) {
		FUNC7(MSG_ERROR, "nl80211: Monitor socket recv failed: %s",
			   FUNC6(errno));
		return;
	}

	if (FUNC2(&iter, (void *) buf, len, NULL)) {
		FUNC7(MSG_INFO, "nl80211: received invalid radiotap frame");
		return;
	}

	while (1) {
		ret = FUNC3(&iter);
		if (ret == -ENOENT)
			break;
		if (ret) {
			FUNC7(MSG_INFO, "nl80211: received invalid radiotap frame (%d)",
				   ret);
			return;
		}
		switch (iter.this_arg_index) {
		case IEEE80211_RADIOTAP_FLAGS:
			if (*iter.this_arg & IEEE80211_RADIOTAP_F_FCS)
				len -= 4;
			break;
		case IEEE80211_RADIOTAP_RX_FLAGS:
			rxflags = 1;
			break;
		case IEEE80211_RADIOTAP_TX_FLAGS:
			injected = 1;
			failed = FUNC4((*(le16 *) iter.this_arg)) &
					IEEE80211_RADIOTAP_F_TX_FAIL;
			break;
		case IEEE80211_RADIOTAP_DATA_RETRIES:
			break;
		case IEEE80211_RADIOTAP_CHANNEL:
			/* TODO: convert from freq/flags to channel number */
			break;
		case IEEE80211_RADIOTAP_RATE:
			datarate = *iter.this_arg * 5;
			break;
		case IEEE80211_RADIOTAP_DBM_ANTSIGNAL:
			ssi_signal = (s8) *iter.this_arg;
			break;
		}
	}

	if (rxflags && injected)
		return;

	if (!injected)
		FUNC0(drv, buf + iter._max_length,
			     len - iter._max_length, datarate, ssi_signal);
	else
		FUNC1(drv->ctx, buf + iter._max_length,
				   len - iter._max_length, !failed);
}