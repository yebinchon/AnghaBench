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
struct wpa_supplicant {struct wpa_radio_work* connect_work; } ;
struct wpa_radio_work {struct wpa_connect_work* ctx; } ;
struct wpa_connect_work {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_radio_work*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_connect_work*) ; 

void FUNC2(struct wpa_supplicant *wpa_s)
{
	struct wpa_connect_work *cwork;
	struct wpa_radio_work *work = wpa_s->connect_work;

	if (!work)
		return;

	wpa_s->connect_work = NULL;
	cwork = work->ctx;
	work->ctx = NULL;
	FUNC1(cwork);
	FUNC0(work);
}