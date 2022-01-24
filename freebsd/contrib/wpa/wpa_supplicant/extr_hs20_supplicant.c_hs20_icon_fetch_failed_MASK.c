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
struct wpa_supplicant {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_supplicant*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hs20_continue_icon_fetch ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*,int) ; 

void FUNC3(struct wpa_supplicant *wpa_s)
{
	FUNC2(wpa_s, -1);
	FUNC0(hs20_continue_icon_fetch, wpa_s, NULL);
	FUNC1(0, 0, hs20_continue_icon_fetch, wpa_s, NULL);
}