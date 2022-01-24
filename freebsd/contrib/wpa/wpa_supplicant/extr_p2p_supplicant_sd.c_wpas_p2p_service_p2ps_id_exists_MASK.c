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
typedef  scalar_t__ u32 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC1(struct wpa_supplicant *wpa_s, u32 adv_id)
{
	if (adv_id == 0)
		return 1;

	if (FUNC0(wpa_s->global->p2p, adv_id))
		return 1;

	return 0;
}