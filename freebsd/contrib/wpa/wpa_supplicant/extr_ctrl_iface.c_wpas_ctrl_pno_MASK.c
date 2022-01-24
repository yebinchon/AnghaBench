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
struct wpa_supplicant {int* manual_sched_scan_freqs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int* FUNC1 (struct wpa_supplicant*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char*,char*) ; 
 int FUNC5 (struct wpa_supplicant*) ; 
 int FUNC6 (struct wpa_supplicant*) ; 

__attribute__((used)) static int FUNC7(struct wpa_supplicant *wpa_s, char *cmd)
{
	char *params;
	char *pos;
	int *freqs = NULL;
	int ret;

	if (FUNC0(cmd)) {
		params = FUNC3(cmd, ' ');
		FUNC2(wpa_s->manual_sched_scan_freqs);
		if (params) {
			params++;
			pos = FUNC4(params, "freq=");
			if (pos)
				freqs = FUNC1(wpa_s,
								   pos + 5);
		}
		wpa_s->manual_sched_scan_freqs = freqs;
		ret = FUNC5(wpa_s);
	} else {
		ret = FUNC6(wpa_s);
	}
	return ret;
}