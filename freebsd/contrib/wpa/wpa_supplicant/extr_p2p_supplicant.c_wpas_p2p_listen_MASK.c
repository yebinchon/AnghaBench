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
struct wpa_supplicant {unsigned int p2p_long_listen; unsigned int max_remain_on_chan; TYPE_1__* global; scalar_t__ p2p_lo_started; } ;
struct TYPE_2__ {int /*<<< orphan*/ * p2p; scalar_t__ p2p_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*) ; 
 int FUNC6 (struct wpa_supplicant*,unsigned int) ; 
 int /*<<< orphan*/  wpas_p2p_long_listen_timeout ; 

int FUNC7(struct wpa_supplicant *wpa_s, unsigned int timeout)
{
	int res;

	if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == NULL)
		return -1;

	if (wpa_s->p2p_lo_started) {
		FUNC3(MSG_DEBUG,
			"P2P: Cannot start P2P listen, it is offloaded");
		return -1;
	}

	FUNC4(wpa_s);
	FUNC5(wpa_s);

	if (timeout == 0) {
		/*
		 * This is a request for unlimited Listen state. However, at
		 * least for now, this is mapped to a Listen state for one
		 * hour.
		 */
		timeout = 3600;
	}
	FUNC0(wpas_p2p_long_listen_timeout, wpa_s, NULL);
	wpa_s->p2p_long_listen = 0;

	/*
	 * Stop previous find/listen operation to avoid trying to request a new
	 * remain-on-channel operation while the driver is still running the
	 * previous one.
	 */
	if (wpa_s->global->p2p)
		FUNC2(wpa_s->global->p2p);

	res = FUNC6(wpa_s, timeout * 1000);
	if (res == 0 && timeout * 1000 > wpa_s->max_remain_on_chan) {
		wpa_s->p2p_long_listen = timeout * 1000;
		FUNC1(timeout, 0,
				       wpas_p2p_long_listen_timeout,
				       wpa_s, NULL);
	}

	return res;
}