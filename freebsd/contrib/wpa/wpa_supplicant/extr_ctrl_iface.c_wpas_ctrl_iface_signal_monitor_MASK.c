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
struct wpa_supplicant {scalar_t__ bgscan_priv; scalar_t__ bgscan; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char*) ; 
 int FUNC2 (struct wpa_supplicant*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct wpa_supplicant *wpa_s,
					  const char *cmd)
{
	const char *pos;
	int threshold = 0;
	int hysteresis = 0;

	if (wpa_s->bgscan && wpa_s->bgscan_priv) {
		FUNC3(MSG_DEBUG,
			   "Reject SIGNAL_MONITOR command - bgscan is active");
		return -1;
	}
	pos = FUNC1(cmd, "THRESHOLD=");
	if (pos)
		threshold = FUNC0(pos + 10);
	pos = FUNC1(cmd, "HYSTERESIS=");
	if (pos)
		hysteresis = FUNC0(pos + 11);
	return FUNC2(wpa_s, threshold, hysteresis);
}