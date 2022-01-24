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
typedef  int /*<<< orphan*/  u8 ;
struct wpa_supplicant {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

void FUNC2(struct wpa_supplicant *wpa_s,
				const u8 *mac_addr, int authorized,
				const u8 *p2p_dev_addr)
{
	if (authorized)
		FUNC0(wpa_s, mac_addr, p2p_dev_addr);
	else
		FUNC1(wpa_s, mac_addr, p2p_dev_addr);
}