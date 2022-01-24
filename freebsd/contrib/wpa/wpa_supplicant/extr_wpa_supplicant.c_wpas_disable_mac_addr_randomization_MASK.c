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
struct wpa_supplicant {scalar_t__ sched_scanning; scalar_t__ pno; } ;

/* Variables and functions */
 unsigned int MAC_ADDR_RAND_PNO ; 
 unsigned int MAC_ADDR_RAND_SCHED_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 

int FUNC4(struct wpa_supplicant *wpa_s,
					unsigned int type)
{
	FUNC0(wpa_s, type);
	if (wpa_s->pno) {
		if (type & MAC_ADDR_RAND_PNO) {
			FUNC3(wpa_s);
			FUNC2(wpa_s);
		}
	} else if (wpa_s->sched_scanning && (type & MAC_ADDR_RAND_SCHED_SCAN)) {
		FUNC1(wpa_s);
	}

	return 0;
}