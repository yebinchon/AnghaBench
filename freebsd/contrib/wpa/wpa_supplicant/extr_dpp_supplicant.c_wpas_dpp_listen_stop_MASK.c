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
struct wpa_supplicant {scalar_t__ dpp_listen_freq; scalar_t__ dpp_in_response_listen; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 

void FUNC3(struct wpa_supplicant *wpa_s)
{
	wpa_s->dpp_in_response_listen = 0;
	if (!wpa_s->dpp_listen_freq)
		return;

	FUNC1(MSG_DEBUG, "DPP: Stop listen on %u MHz",
		   wpa_s->dpp_listen_freq);
	FUNC0(wpa_s);
	wpa_s->dpp_listen_freq = 0;
	FUNC2(wpa_s);
}