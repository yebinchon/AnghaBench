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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_sm {int rx_replay_counter_set; int /*<<< orphan*/  rx_replay_counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPA_REPLAY_COUNTER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2(struct wpa_sm *sm, const u8 *rx_replay_counter)
{
	if (rx_replay_counter == NULL)
		return;

	FUNC0(sm->rx_replay_counter, rx_replay_counter,
		  WPA_REPLAY_COUNTER_LEN);
	sm->rx_replay_counter_set = 1;
	FUNC1(MSG_DEBUG, "Updated key replay counter");
}