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
struct hostapd_iface {TYPE_1__* current_mode; } ;
struct hostapd_channel_data {int /*<<< orphan*/  interference_factor; int /*<<< orphan*/  freq; int /*<<< orphan*/  chan; } ;
struct TYPE_2__ {int num_channels; struct hostapd_channel_data* channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_iface*,struct hostapd_channel_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_channel_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_iface*,struct hostapd_channel_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC4(
	struct hostapd_iface *iface)
{
	int i;
	struct hostapd_channel_data *chan;

	for (i = 0; i < iface->current_mode->num_channels; i++) {
		chan = &iface->current_mode->channels[i];

		if (!FUNC1(chan))
			continue;

		if (!FUNC2(iface, chan))
			continue;

		FUNC3(MSG_DEBUG, "ACS: Survey analysis for channel %d (%d MHz)",
			   chan->chan, chan->freq);

		FUNC0(iface, chan);

		FUNC3(MSG_DEBUG, "ACS:  * interference factor average: %Lg",
			   chan->interference_factor);
	}
}