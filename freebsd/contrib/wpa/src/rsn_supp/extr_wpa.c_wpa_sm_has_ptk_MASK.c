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
struct wpa_sm {int ptk_set; } ;

/* Variables and functions */

int FUNC0(struct wpa_sm *sm)
{
	if (sm == NULL)
		return 0;
	return sm->ptk_set;
}