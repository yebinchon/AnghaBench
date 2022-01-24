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
struct wpa_sm {int /*<<< orphan*/ * l2_tdls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_sm*) ; 

void FUNC2(struct wpa_sm *sm)
{
	if (sm == NULL)
		return;

	if (sm->l2_tdls)
		FUNC0(sm->l2_tdls);
	sm->l2_tdls = NULL;

	FUNC1(sm);
}