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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int /*<<< orphan*/ * p2p; scalar_t__ p2p_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct wpabuf*,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/ *) ; 

void FUNC2(struct wpa_supplicant *wpa_s, struct wpabuf *ies)
{
	unsigned int bands;

	if (wpa_s->global->p2p_disabled)
		return;
	if (wpa_s->global->p2p == NULL)
		return;

	bands = FUNC1(wpa_s, NULL);
	FUNC0(wpa_s->global->p2p, ies, NULL, bands);
}