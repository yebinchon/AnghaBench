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
struct wpa_bss {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_EID_EXT_CAPAB ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_bss const*,int /*<<< orphan*/ ) ; 

int FUNC2(const struct wpa_bss *bss, unsigned int capab)
{
	return FUNC0(FUNC1(bss, WLAN_EID_EXT_CAPAB),
				    capab);
}