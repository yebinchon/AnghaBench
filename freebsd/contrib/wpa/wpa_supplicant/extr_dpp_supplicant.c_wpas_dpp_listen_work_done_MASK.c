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
struct wpas_dpp_listen_work {int dummy; } ;
struct wpa_supplicant {TYPE_1__* dpp_listen_work; } ;
struct TYPE_2__ {struct wpas_dpp_listen_work* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpas_dpp_listen_work*) ; 

__attribute__((used)) static void FUNC2(struct wpa_supplicant *wpa_s)
{
	struct wpas_dpp_listen_work *lwork;

	if (!wpa_s->dpp_listen_work)
		return;

	lwork = wpa_s->dpp_listen_work->ctx;
	FUNC1(lwork);
	FUNC0(wpa_s->dpp_listen_work);
	wpa_s->dpp_listen_work = NULL;
}