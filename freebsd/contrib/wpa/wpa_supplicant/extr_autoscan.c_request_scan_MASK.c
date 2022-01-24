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
struct wpa_supplicant {int /*<<< orphan*/  scan_interval; int /*<<< orphan*/  scan_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANUAL_SCAN_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct wpa_supplicant*) ; 

__attribute__((used)) static void FUNC2(struct wpa_supplicant *wpa_s)
{
	wpa_s->scan_req = MANUAL_SCAN_REQ;

	if (FUNC1(wpa_s))
		FUNC0(wpa_s, wpa_s->scan_interval, 0);
}