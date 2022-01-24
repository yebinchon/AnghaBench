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
struct hostapd_channel_data {int flag; int /*<<< orphan*/  survey_list; } ;

/* Variables and functions */
 int HOSTAPD_CHAN_DISABLED ; 
 scalar_t__ FUNC0 (struct hostapd_channel_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct hostapd_channel_data *chan)
{
	return !FUNC1(&chan->survey_list) &&
		!(chan->flag & HOSTAPD_CHAN_DISABLED) &&
		FUNC0(chan);
}