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
struct wpa_sm {int /*<<< orphan*/  pmk; scalar_t__ pmk_len; TYPE_1__* cur_pmksa; } ;
struct TYPE_2__ {int /*<<< orphan*/  pmk; scalar_t__ pmk_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  PMK_LEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct wpa_sm *sm)
{
	if (sm == NULL)
		return;

	if (sm->cur_pmksa) {
		FUNC2(MSG_DEBUG,
				"WPA: Set PMK based on current PMKSA",
				sm->cur_pmksa->pmk, sm->cur_pmksa->pmk_len);
		sm->pmk_len = sm->cur_pmksa->pmk_len;
		FUNC0(sm->pmk, sm->cur_pmksa->pmk, sm->pmk_len);
	} else {
		FUNC3(MSG_DEBUG, "WPA: No current PMKSA - clear PMK");
		sm->pmk_len = 0;
		FUNC1(sm->pmk, 0, PMK_LEN_MAX);
	}
}