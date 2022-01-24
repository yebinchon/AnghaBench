#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hostapd_data {TYPE_1__* conf; scalar_t__ wpa_auth; } ;
struct TYPE_2__ {int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hostapd_data*) ; 

void FUNC2(struct hostapd_data *hapd)
{
	if (hapd->wpa_auth)
		return;

	FUNC0(hapd, 0);
	FUNC1(hapd->conf->iface, hapd);
}