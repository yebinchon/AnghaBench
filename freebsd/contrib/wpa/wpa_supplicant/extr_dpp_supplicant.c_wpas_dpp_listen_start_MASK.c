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
struct wpas_dpp_listen_work {unsigned int freq; } ;
struct wpa_supplicant {unsigned int dpp_listen_freq; scalar_t__ dpp_listen_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  dpp_start_listen_cb ; 
 struct wpas_dpp_listen_work* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct wpa_supplicant*,unsigned int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpas_dpp_listen_work*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpas_dpp_listen_work*) ; 

__attribute__((used)) static int FUNC5(struct wpa_supplicant *wpa_s,
				 unsigned int freq)
{
	struct wpas_dpp_listen_work *lwork;

	if (wpa_s->dpp_listen_work) {
		FUNC2(MSG_DEBUG,
			   "DPP: Reject start_listen since dpp_listen_work already exists");
		return -1;
	}

	if (wpa_s->dpp_listen_freq)
		FUNC3(wpa_s);
	wpa_s->dpp_listen_freq = freq;

	lwork = FUNC0(sizeof(*lwork));
	if (!lwork)
		return -1;
	lwork->freq = freq;

	if (FUNC1(wpa_s, freq, "dpp-listen", 0, dpp_start_listen_cb,
			   lwork) < 0) {
		FUNC4(lwork);
		return -1;
	}

	return 0;
}