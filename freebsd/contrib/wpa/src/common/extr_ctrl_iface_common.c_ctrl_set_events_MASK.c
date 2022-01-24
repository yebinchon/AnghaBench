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
struct wpa_ctrl_dst {int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  WPA_EVENT_RX_PROBE_REQUEST ; 
 int FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(struct wpa_ctrl_dst *dst, const char *input)
{
	const char *value;
	int val;

	if (!input)
		return 0;

	value = FUNC1(input, '=');
	if (!value)
		return -1;
	value++;
	val = FUNC0(value);
	if (val < 0 || val > 1)
		return -1;

	if (FUNC2(input, "probe_rx_events=")) {
		if (val)
			dst->events |= WPA_EVENT_RX_PROBE_REQUEST;
		else
			dst->events &= ~WPA_EVENT_RX_PROBE_REQUEST;
	}

	return 0;
}