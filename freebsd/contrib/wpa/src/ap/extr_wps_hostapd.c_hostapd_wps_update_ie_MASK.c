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
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wps_update_ie ; 

void FUNC1(struct hostapd_data *hapd)
{
	FUNC0(hapd, wps_update_ie, NULL);
}