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
struct ieee802_1x_cp_sm {struct ieee802_1x_cp_sm* oki; struct ieee802_1x_cp_sm* lki; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ieee802_1x_cp_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ieee802_1x_cp_retire_when_timeout ; 
 int /*<<< orphan*/  ieee802_1x_cp_step_cb ; 
 int /*<<< orphan*/  ieee802_1x_cp_transmit_when_timeout ; 
 int /*<<< orphan*/  FUNC1 (struct ieee802_1x_cp_sm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct ieee802_1x_cp_sm *sm)
{
	FUNC2(MSG_DEBUG, "CP: state machine removed");
	if (!sm)
		return;

	FUNC0(ieee802_1x_cp_retire_when_timeout, sm, NULL);
	FUNC0(ieee802_1x_cp_transmit_when_timeout, sm, NULL);
	FUNC0(ieee802_1x_cp_step_cb, sm, NULL);
	FUNC1(sm->lki);
	FUNC1(sm->oki);
	FUNC1(sm);
}