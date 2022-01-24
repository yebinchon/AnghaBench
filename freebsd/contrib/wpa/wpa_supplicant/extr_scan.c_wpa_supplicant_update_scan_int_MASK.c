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
struct wpa_supplicant {int scan_interval; } ;
struct os_reltime {int sec; scalar_t__ usec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *,struct os_reltime*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct os_reltime*,struct os_reltime*) ; 
 int /*<<< orphan*/  wpa_supplicant_scan ; 

void FUNC3(struct wpa_supplicant *wpa_s, int sec)
{
	struct os_reltime remaining, new_int;
	int cancelled;

	cancelled = FUNC0(wpa_supplicant_scan, wpa_s, NULL,
					     &remaining);

	new_int.sec = sec;
	new_int.usec = 0;
	if (cancelled && FUNC2(&remaining, &new_int)) {
		new_int.sec = remaining.sec;
		new_int.usec = remaining.usec;
	}

	if (cancelled) {
		FUNC1(new_int.sec, new_int.usec,
				       wpa_supplicant_scan, wpa_s, NULL);
	}
	wpa_s->scan_interval = sec;
}