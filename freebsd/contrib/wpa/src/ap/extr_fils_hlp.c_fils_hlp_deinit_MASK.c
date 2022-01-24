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
struct hostapd_data {int dhcp_sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(struct hostapd_data *hapd)
{
	if (hapd->dhcp_sock >= 0) {
		FUNC1(hapd->dhcp_sock);
		FUNC0(hapd->dhcp_sock);
		hapd->dhcp_sock = -1;
	}
}