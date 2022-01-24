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
struct wpas_p2p_listen_work {unsigned int freq; unsigned int duration; int /*<<< orphan*/ * probe_resp_ie; } ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {scalar_t__ p2p_listen_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct wpas_p2p_listen_work* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct wpa_supplicant*,unsigned int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpas_p2p_listen_work*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpas_p2p_listen_work*) ; 
 int /*<<< orphan*/  wpas_start_listen_cb ; 

__attribute__((used)) static int FUNC5(void *ctx, unsigned int freq,
			     unsigned int duration,
			     const struct wpabuf *probe_resp_ie)
{
	struct wpa_supplicant *wpa_s = ctx;
	struct wpas_p2p_listen_work *lwork;

	if (wpa_s->p2p_listen_work) {
		FUNC2(MSG_DEBUG, "P2P: Reject start_listen since p2p_listen_work already exists");
		return -1;
	}

	lwork = FUNC0(sizeof(*lwork));
	if (lwork == NULL)
		return -1;
	lwork->freq = freq;
	lwork->duration = duration;
	if (probe_resp_ie) {
		lwork->probe_resp_ie = FUNC3(probe_resp_ie);
		if (lwork->probe_resp_ie == NULL) {
			FUNC4(lwork);
			return -1;
		}
	}

	if (FUNC1(wpa_s, freq, "p2p-listen", 0, wpas_start_listen_cb,
			   lwork) < 0) {
		FUNC4(lwork);
		return -1;
	}

	return 0;
}