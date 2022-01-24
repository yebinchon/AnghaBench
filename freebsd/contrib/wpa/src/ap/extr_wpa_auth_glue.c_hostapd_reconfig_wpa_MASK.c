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
struct wpa_auth_config {int dummy; } ;
struct hostapd_data {int /*<<< orphan*/  wpa_auth; int /*<<< orphan*/  iconf; int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_auth_config*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wpa_auth_config*) ; 

void FUNC2(struct hostapd_data *hapd)
{
	struct wpa_auth_config wpa_auth_conf;
	FUNC0(hapd->conf, hapd->iconf, &wpa_auth_conf);
	FUNC1(hapd->wpa_auth, &wpa_auth_conf);
}